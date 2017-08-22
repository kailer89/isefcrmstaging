module ApplicationHelper
 
  def setup_search_form(builder)
    fields = builder.grouping_fields builder.object.new_grouping, object_name: 'new_object_name', child_index: "new_grouping" do |f|
      render('grouping_fields', f: f)
    end
    content_for :document_ready, %Q{
      var search = new Search({grouping: "#{escape_javascript(fields)}"});
      $('button.add_fields').on('click', function() {
        search.add_fields(this, $(this).data('fieldType'), $(this).data('content'));
        return false;
      });
      $('button.remove_fields').on('click', function() {
        search.remove_fields(this);
        return false;
      });
      $('button.nest_fields').on('click', function() {
        search.nest_fields(this, $(this).data('fieldType'));
        return false;
      });
    }.html_safe
  end

    def button_to_remove_fields(name, f)
    content_tag :button, name, class: 'remove_fields'
  end

  def button_to_add_fields(name, f, type)
    new_object = f.object.send "build_#{type}"
    fields = f.send("#{type}_fields", new_object, child_index: "new_#{type}") do |builder|
      render(type.to_s + "_fields", f: builder)
    end
    content_tag :button, name, :class => 'add_fields', 'data-field-type' => type, 'data-content' => "#{fields}"
  end

  def button_to_nest_fields(name, type)
    content_tag :button, name, :class => 'nest_fields', 'data-field-type' => type
  end

  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end
  
  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
  end

  def avatar_url(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      default_url = "#{root_url}images/guest.jpeg"
      gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
      "http://gravatar.com/avatar/#{gravatar_id}.png?d=#{CGI.escape(default_url)}"
    end
  end 

  def call_rake(task, options = {})
    options[:rails_env] ||= Rails.env
    args = options.map { |n, v| "#{n.to_s.upcase}='#{v}'" }
    system "/usr/bin/rake #{task} #{args.join(' ')} --trace 2>&1 >> #{Rails.root}/log/rake.log &"
  end   

  def istruevalue(fieldvalue,fieldname)
      if fieldvalue == true
        fieldname.html_safe
      end
  end

  def printMedio(valor,texto="Sin Texto")
    if valor
      texto
    end
  end

  def printIfAvailable(valor,texto)
    if texto
      if texto == true
        raw("<b>" + valor + "</b><br>" +"Si")
      else
        if not texto.to_s.empty?
          raw("<b>" + valor + "</b><br>" + texto.to_s)
        else
         if texto == false
            raw("<b>" + valor + "</b><br>" + "No")
         end
        end        
      end
    end
  end

  def printValue(valor,texto)
    if texto
      if texto == true
        raw("Si")
      else
        if not texto.to_s.empty?
          raw( texto.to_s.strip)
        else
         if texto == false
            raw("No")
         end
        end        
      end
    end
  end

  def printDescuento(valor,texto="Sin Descuento")
    if valor
      "Con Descuento"
    else
      "Sin Descuento"
    end
  end

end
