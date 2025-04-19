defmodule Phx.New.Single do
  @moduledoc false
  use Phx.New.Generator
  alias Phx.New.{Project}

  template(:new, [
    {:config, :project,
     "phx_single/config/config.exs": "config/config.exs",
     "phx_single/config/dev.exs": "config/dev.exs",
     "phx_single/config/prod.exs": "config/prod.exs",
     "phx_single/config/runtime.exs": "config/runtime.exs",
     "phx_single/config/test.exs": "config/test.exs"},
    {:eex, :web,
     "phx_single/lib/app_name/application.ex": "lib/:app/application.ex",
     "phx_single/lib/app_name.ex": "lib/:app.ex",
     "phx_web/controllers/error_json.ex": "lib/:lib_web_name/controllers/error_json.ex",
     "phx_web/endpoint.ex": "lib/:lib_web_name/endpoint.ex",
     "phx_web/router.ex": "lib/:lib_web_name/router.ex",
     "phx_web/telemetry.ex": "lib/:lib_web_name/telemetry.ex",
     "phx_single/lib/app_name_web.ex": "lib/:lib_web_name.ex",
     "phx_single/lib/app_name_web/token.ex": "lib/:lib_web_name/token.ex",
     "phx_single/mix.exs": "mix.exs",
     "phx_single/README.md": "README.md",
     "phx_single/formatter.exs": ".formatter.exs",
     "phx_single/gitignore": ".gitignore",
     "phx_test/support/conn_case.ex": "test/support/conn_case.ex",
     "phx_single/test/test_helper.exs": "test/test_helper.exs",
     "phx_test/controllers/error_json_test.exs":
       "test/:lib_web_name/controllers/error_json_test.exs"},
    {:keep, :web,
     "phx_web/controllers": "lib/:lib_web_name/controllers",
     "phx_test/controllers": "test/:lib_web_name/controllers"}
  ])

  template(:gettext, [
    {:eex, :web,
     "phx_gettext/gettext.ex": "lib/:lib_web_name/gettext.ex",
     "phx_gettext/en/LC_MESSAGES/errors.po": "priv/gettext/en/LC_MESSAGES/errors.po",
     "phx_gettext/errors.pot": "priv/gettext/errors.pot"}
  ])

  template(:html, [
    {:eex, :web,
     "phx_web/controllers/error_html.ex": "lib/:lib_web_name/controllers/error_html.ex",
     "phx_test/controllers/error_html_test.exs":
       "test/:lib_web_name/controllers/error_html_test.exs",
     "phx_web/components/core_components.ex": "lib/:lib_web_name/components/core_components.ex",
     "phx_web/components/turbo_components.ex": "lib/:lib_web_name/components/turbo_components.ex",
     "phx_web/channels/turbo_stream_channel.ex": "lib/:lib_web_name/channels/turbo_stream_channel.ex",
     "phx_web/controllers/turbo/plug.ex": "lib/:lib_web_name/controllers/turbo/plug.ex",
     "phx_web/controllers/turbo/controller.ex": "lib/:lib_web_name/controllers/turbo/controller.ex",
     "phx_web/controllers/turbo/stream.ex": "lib/:lib_web_name/controllers/turbo/stream.ex",
     "phx_web/controllers/page_controller.ex": "lib/:lib_web_name/controllers/page_controller.ex",
     "phx_web/controllers/page_html.ex": "lib/:lib_web_name/controllers/page_html.ex",
     "phx_web/controllers/page_html/home.html.heex":
       "lib/:lib_web_name/controllers/page_html/home.html.heex",
     "phx_test/controllers/page_controller_test.exs":
       "test/:lib_web_name/controllers/page_controller_test.exs",
     "phx_web/components/layouts/root.html.heex":
       "lib/:lib_web_name/components/layouts/root.html.heex",
     "phx_web/components/layouts.ex": "lib/:lib_web_name/components/layouts.ex"},
    {:eex, :web, "phx_assets/logo.svg": "priv/static/images/logo.svg"},
    {:text, :web,
     "phx_priv/templates/phx.gen.html/controller.ex": "priv/templates/phx.gen.html/controller.ex",
     "phx_priv/templates/phx.gen.html/controller_test.exs": "priv/templates/phx.gen.html/controller_test.exs",
     "phx_priv/templates/phx.gen.auth/auth.ex": "priv/templates/phx.gen.html/auth.ex",
     "phx_priv/templates/phx.gen.auth/auth_test.exs": "priv/templates/phx.gen.html/auth_test.exs",
     "phx_priv/templates/phx.gen.auth/confirmation_live_test.exs": "priv/templates/phx.gen.html/confirmation_live_test.exs",
     "phx_priv/templates/phx.gen.auth/login_live_test.exs": "priv/templates/phx.gen.html/login_live_test.exs",
     "phx_priv/templates/phx.gen.auth/registration_controller.ex": "priv/templates/phx.gen.auth/registration_controller.ex",
     "phx_priv/templates/phx.gen.auth/registration_controller_test.exs": "priv/templates/phx.gen.auth/registration_controller_test.exs",
     "phx_priv/templates/phx.gen.auth/session_controller.ex": "priv/templates/phx.gen.auth/session_controller.ex",
     "phx_priv/templates/phx.gen.auth/session_controller_test.exs": "priv/templates/phx.gen.auth/session_controller_test.exs",
     "phx_priv/templates/phx.gen.auth/settings_controller.ex": "priv/templates/phx.gen.auth/settings_controller.ex",
     "phx_priv/templates/phx.gen.auth/settings_controller_test.exs": "priv/templates/phx.gen.auth/settings_controller_test.exs",
     "phx_priv/templates/phx.gen.auth/settings_live_test.exs": "priv/templates/phx.gen.auth/settings_live_test.exs"}
  ])

  template(:ecto, [
    {:eex, :app,
     "phx_ecto/repo.ex": "lib/:app/repo.ex",
     "phx_ecto/formatter.exs": "priv/repo/migrations/.formatter.exs",
     "phx_ecto/seeds.exs": "priv/repo/seeds.exs",
     "phx_ecto/data_case.ex": "test/support/data_case.ex"},
    {:keep, :app, "phx_ecto/priv/repo/migrations": "priv/repo/migrations"}
  ])

  template(:css, [
    {:eex, :web,
     "phx_assets/app.css": "assets/css/app.css",
     "phx_assets/heroicons.js": "assets/vendor/heroicons.js",
     "phx_assets/daisyui.js": "assets/vendor/daisyui.js",
     "phx_assets/daisyui-theme.js": "assets/vendor/daisyui-theme.js"}
  ])

  template(:js, [
    {:eex, :web,
     "phx_assets/app.js": "assets/js/app.js",
     "phx_assets/turbo/turbo_stream_channel_source.js": "assets/js/turbo/turbo_stream_channel_source.js",
     "phx_assets/turbo/index.js": "assets/js/turbo/index.js",
     "phx_assets/turbo.js": "assets/vendor/turbo.js",
     "phx_assets/topbar.js": "assets/vendor/topbar.js"}
  ])

  template(:no_js, [
    {:text, :web, "phx_static/app.js": "priv/static/assets/js/app.js"}
  ])

  template(:no_css, [
    {
      :text,
      :web,
      # the default.css file can be re-created by using the recreate_default_css.exs file
      # in the installer folder: `elixir installer/recreate_default_css.exs`
      "phx_static/app.css": "priv/static/assets/css/app.css",
      "phx_static/default.css": "priv/static/assets/default.css"
    }
  ])

  template(:static, [
    {:text, :web,
     "phx_static/robots.txt": "priv/static/robots.txt",
     "phx_static/favicon.ico": "priv/static/favicon.ico"}
  ])

  template(:mailer, [
    {:eex, :app, "phx_mailer/lib/app_name/mailer.ex": "lib/:app/mailer.ex"}
  ])

  def prepare_project(%Project{app: app, base_path: base_path} = project) when not is_nil(app) do
    if in_umbrella?(base_path) do
      %{project | in_umbrella?: true, project_path: Path.dirname(Path.dirname(base_path))}
    else
      %{project | in_umbrella?: false, project_path: base_path}
    end
    |> put_app()
    |> put_root_app()
    |> put_web_app()
  end

  defp put_app(%Project{base_path: base_path} = project) do
    %{project | app_path: base_path}
  end

  defp put_root_app(%Project{app: app, opts: opts} = project) do
    %{
      project
      | root_app: app,
        root_mod: Module.concat([opts[:module] || Macro.camelize(app)])
    }
  end

  defp put_web_app(%Project{app: app} = project) do
    %{
      project
      | web_app: app,
        lib_web_name: "#{app}_web",
        web_namespace: Module.concat(["#{project.root_mod}Web"]),
        web_path: project.base_path
    }
  end

  def generate(%Project{} = project) do
    copy_from(project, __MODULE__, :new)

    if Project.ecto?(project), do: gen_ecto(project)
    if Project.html?(project), do: gen_html(project)
    if Project.mailer?(project), do: gen_mailer(project)
    if Project.gettext?(project), do: gen_gettext(project)

    gen_assets(project)
    project
  end

  def gen_html(project) do
    copy_from(project, __MODULE__, :html)
  end

  def gen_gettext(project) do
    copy_from(project, __MODULE__, :gettext)
  end

  def gen_ecto(project) do
    copy_from(project, __MODULE__, :ecto)
    gen_ecto_config(project)
  end

  def gen_assets(%Project{} = project) do
    javascript? = Project.javascript?(project)
    css? = Project.css?(project)
    html? = Project.html?(project)

    copy_from(project, __MODULE__, :static)

    if html? or javascript? do
      command = if javascript?, do: :js, else: :no_js
      copy_from(project, __MODULE__, command)
    end

    if html? or css? do
      command = if css?, do: :css, else: :no_css
      copy_from(project, __MODULE__, command)
    end
  end

  def gen_mailer(%Project{} = project) do
    copy_from(project, __MODULE__, :mailer)
  end
end
