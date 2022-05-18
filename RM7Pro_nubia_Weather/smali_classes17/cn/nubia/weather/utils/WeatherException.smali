.class public Lcn/nubia/weather/utils/WeatherException;
.super Ljava/lang/Exception;
.source "WeatherException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/utils/WeatherException$WeatherError;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherException"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private code:Ljava/lang/String;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/weather/utils/WeatherException;->msg:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherException;->code:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/weather/utils/WeatherException;->msg:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherException;->code:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcn/nubia/weather/utils/WeatherException;->msg:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherException;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 35
    iget-object v3, p0, Lcn/nubia/weather/utils/WeatherException;->msg:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 36
    iget-object v3, p0, Lcn/nubia/weather/utils/WeatherException;->msg:Ljava/lang/String;

    .line 68
    :goto_0
    return-object v3

    .line 38
    :cond_0
    const-string v3, "WeatherException"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WeatherError code is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/weather/utils/WeatherException;->code:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v1, 0x0

    .line 41
    .local v1, "error":Lcn/nubia/weather/utils/WeatherException$WeatherError;
    :try_start_0
    iget-object v3, p0, Lcn/nubia/weather/utils/WeatherException;->code:Ljava/lang/String;

    invoke-static {v3}, Lcn/nubia/weather/utils/WeatherException$WeatherError;->valueOf(Ljava/lang/String;)Lcn/nubia/weather/utils/WeatherException$WeatherError;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 45
    :goto_1
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 47
    .local v2, "resources":Landroid/content/res/Resources;
    :try_start_1
    sget-object v3, Lcn/nubia/weather/utils/WeatherException$1;->$SwitchMap$cn$nubia$weather$utils$WeatherException$WeatherError:[I

    invoke-virtual {v1}, Lcn/nubia/weather/utils/WeatherException$WeatherError;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 58
    const v3, 0x7f09006c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/weather/utils/WeatherException;->msg:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    :goto_2
    iget-object v3, p0, Lcn/nubia/weather/utils/WeatherException;->msg:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 65
    iget-object v3, p0, Lcn/nubia/weather/utils/WeatherException;->msg:Ljava/lang/String;

    goto :goto_0

    .line 42
    .end local v2    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "other"

    invoke-static {v3}, Lcn/nubia/weather/utils/WeatherException$WeatherError;->valueOf(Ljava/lang/String;)Lcn/nubia/weather/utils/WeatherException$WeatherError;

    move-result-object v1

    goto :goto_1

    .line 49
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "resources":Landroid/content/res/Resources;
    :pswitch_0
    const v3, 0x7f09006b

    :try_start_2
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/weather/utils/WeatherException;->msg:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 61
    :catch_1
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, ""

    iput-object v3, p0, Lcn/nubia/weather/utils/WeatherException;->msg:Ljava/lang/String;

    goto :goto_2

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    const v3, 0x7f09006d

    :try_start_3
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/weather/utils/WeatherException;->msg:Ljava/lang/String;

    goto :goto_2

    .line 55
    :pswitch_2
    const v3, 0x7f09006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/weather/utils/WeatherException;->msg:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 68
    :cond_1
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
