module UserUpgradesHelper
  def stripe_button(desc, cost)
    html = %{
      <form action="#{user_upgrade_path}" method="POST" class="stripe">
        <input type="hidden" name="authenticity_token" value="#{form_authenticity_token}">
        #{hidden_field_tag(:desc, desc)}
        <script
          src="https://checkout.stripe.com/checkout.js" class="stripe-button"
          data-key="#{Danbooru.config.stripe_publishable_key}"
          data-name="#{Danbooru.config.app_name}"
          data-description="#{desc}"
          data-label="#{desc}"
          data-amount="#{cost}">
        </script>
      </form>
    }

    raw(html)
  end
end
