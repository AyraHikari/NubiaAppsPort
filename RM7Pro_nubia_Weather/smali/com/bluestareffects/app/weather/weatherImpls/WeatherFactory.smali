.class public Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;
.super Ljava/lang/Object;
.source "WeatherFactory.java"


# instance fields
.field private mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

.field private mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;


# direct methods
.method public constructor <init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;)V
    .locals 0
    .param p1, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p2, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    .line 19
    iput-object p2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .line 20
    return-void
.end method


# virtual methods
.method public createWeather(Landroid/content/Context;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/bluestareffects/app/weather/api/WeatherType;
    .param p3, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    sget-object v1, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    invoke-virtual {p2}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 107
    :goto_0
    return-object v0

    .line 26
    :pswitch_0
    new-instance v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDefault;

    .end local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDefault;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 27
    .restart local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    goto :goto_0

    .line 29
    :pswitch_1
    new-instance v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightDefault;

    .end local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightDefault;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 30
    .restart local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    goto :goto_0

    .line 32
    :pswitch_2
    new-instance v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDaySunny;

    .end local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDaySunny;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 33
    .restart local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    goto :goto_0

    .line 35
    :pswitch_3
    new-instance v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightSunny;

    .end local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightSunny;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 36
    .restart local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    goto :goto_0

    .line 38
    :pswitch_4
    new-instance v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;

    .end local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 39
    .restart local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    goto :goto_0

    .line 41
    :pswitch_5
    new-instance v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightCloudy;

    .end local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightCloudy;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 42
    .restart local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    goto :goto_0

    .line 45
    :pswitch_6
    new-instance v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherOvercast;

    .end local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherOvercast;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 46
    .restart local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    goto :goto_0

    .line 49
    :pswitch_7
    new-instance v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShower;

    .end local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShower;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 50
    .restart local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    goto :goto_0

    .line 59
    :pswitch_8
    new-instance v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;

    .end local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 60
    .restart local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    goto :goto_0

    .line 69
    :pswitch_9
    new-instance v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSnow;

    .end local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSnow;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 70
    .restart local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    goto/16 :goto_0

    .line 72
    :pswitch_a
    new-instance v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayDust;

    .end local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayDust;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 73
    .restart local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    goto/16 :goto_0

    .line 75
    :pswitch_b
    new-instance v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightDust;

    .end local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightDust;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 76
    .restart local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    goto/16 :goto_0

    .line 79
    :pswitch_c
    new-instance v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFog;

    .end local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFog;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 80
    .restart local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    goto/16 :goto_0

    .line 83
    :pswitch_d
    new-instance v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHaze;

    .end local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHaze;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 84
    .restart local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    goto/16 :goto_0

    .line 87
    :pswitch_e
    new-instance v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSandStorm;

    .end local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSandStorm;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 88
    .restart local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    goto/16 :goto_0

    .line 91
    :pswitch_f
    new-instance v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHail;

    .end local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHail;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 92
    .restart local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    goto/16 :goto_0

    .line 95
    :pswitch_10
    new-instance v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainyHail;

    .end local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainyHail;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 96
    .restart local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    goto/16 :goto_0

    .line 99
    :pswitch_11
    new-instance v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainySnow;

    .end local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainySnow;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 100
    .restart local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    goto/16 :goto_0

    .line 103
    :pswitch_12
    new-instance v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShowerHail;

    .end local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFactory;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShowerHail;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .restart local v0    # "weather":Lcom/bluestareffects/app/weather/weatherImpls/Weather;
    goto/16 :goto_0

    .line 24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method
