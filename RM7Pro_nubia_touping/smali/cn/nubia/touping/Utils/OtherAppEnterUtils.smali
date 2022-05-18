.class public Lcn/nubia/touping/Utils/OtherAppEnterUtils;
.super Ljava/lang/Object;
.source "OtherAppEnterUtils.java"


# static fields
.field public static final FROMOTHERAPP_DEFAULT:Ljava/lang/String; = "FROMOTHERAPP_DEFAULT"

.field public static final FROMOTHERAPP_ENT_KIT:Ljava/lang/String; = "FROMOTHERAPP_ENT_KIT"

.field public static final FROMOTHERAPP_GAMESPACE:Ljava/lang/String; = "FROMOTHERAPP_GAMESPACE"

.field public static final FROMOTHERAPP_KEY:Ljava/lang/String; = "fromotherapp_key"

.field public static final FROMOTHERAPP_SETTING:Ljava/lang/String; = "FROMOTHERAPP_SETTING"

.field public static final FROMOTHERAPP_SMALLWINDOW:Ljava/lang/String; = "FROMOTHERAPP_SMALLWINDOW"

.field public static final FROMOTHERAPP_SYSTEMUI:Ljava/lang/String; = "FROMOTHERAPP_SYSTEMUI"

.field public static final FROMOTHERAPP_VIRTUALGAMEHANDLE:Ljava/lang/String; = "FROMOTHERAPP_VIRTUALGAMEHANDLE"

.field private static final TAG:Ljava/lang/String; = "OtherAppEnterUtils"

.field public static currentStartType:Ljava/lang/String; = null

.field public static final delayTime:I = 0x12c

.field public static final delayTime_clickCTAAGRREN:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "FROMOTHERAPP_SYSTEMUI"

    sput-object v0, Lcn/nubia/touping/Utils/OtherAppEnterUtils;->currentStartType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finishActivityWhenOtherAppEnter(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    if-nez p0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-static {p0}, Lcn/nubia/touping/Utils/OtherAppEnterUtils;->getFromOtherApp(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static getFromOtherApp(Landroid/app/Activity;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 39
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 64
    :cond_1
    :goto_0
    return v1

    .line 42
    :cond_2
    const-string v3, "OtherAppEnterUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activity.getIntent() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "fromotherapp_key"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fromotherapp_key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "value":Ljava/lang/String;
    const-string v2, "OtherAppEnterUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v2, "FROMOTHERAPP_SYSTEMUI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 50
    const-string v2, "FROMOTHERAPP_GAMESPACE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    const-string v2, "FROMOTHERAPP_SMALLWINDOW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    const-string v2, "FROMOTHERAPP_VIRTUALGAMEHANDLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .end local v0    # "value":Ljava/lang/String;
    :cond_3
    move v1, v2

    .line 64
    goto :goto_0
.end method

.method public static isFromGameSpace(Landroid/app/Activity;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 68
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v1

    .line 71
    :cond_1
    const-string v2, "OtherAppEnterUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activity.getIntent() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fromotherapp_key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fromotherapp_key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "value":Ljava/lang/String;
    const-string v2, "OtherAppEnterUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v2, "FROMOTHERAPP_GAMESPACE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static setCurrentStartType(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromotherapp_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromotherapp_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "value":Ljava/lang/String;
    sput-object v0, Lcn/nubia/touping/Utils/OtherAppEnterUtils;->currentStartType:Ljava/lang/String;

    .line 35
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method
