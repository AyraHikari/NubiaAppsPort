.class final Lcn/nubia/touping/Utils/LeBoOprate$1;
.super Ljava/lang/Object;
.source "LeBoOprate.java"

# interfaces
.implements Lcom/hpplay/sdk/source/api/IBindSdkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/LeBoOprate;->initLeBoSDK(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindCallback(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 94
    const-string v0, "LeBoOprate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iinitLeBoSDK  end result= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sput-boolean p1, Lcn/nubia/touping/Utils/LeBoOprate;->initSuccess:Z

    .line 96
    if-eqz p1, :cond_0

    .line 97
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setDebugMode(Z)Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    .line 99
    :cond_0
    return-void
.end method
