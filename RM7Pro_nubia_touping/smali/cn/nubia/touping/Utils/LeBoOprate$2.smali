.class final Lcn/nubia/touping/Utils/LeBoOprate$2;
.super Ljava/lang/Object;
.source "LeBoOprate.java"

# interfaces
.implements Lcom/hpplay/sdk/source/api/IBindSdkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/LeBoOprate;->startBrowse(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindCallback(Z)V
    .locals 4
    .param p1, "b"    # Z

    .prologue
    const/4 v3, 0x1

    .line 126
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

    .line 127
    sput-boolean p1, Lcn/nubia/touping/Utils/LeBoOprate;->initSuccess:Z

    .line 129
    if-eqz p1, :cond_0

    .line 130
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->startBrowse(ZZ)V

    .line 131
    invoke-static {v3}, Lcn/nubia/touping/Utils/LeBoOprate;->access$002(I)I

    .line 133
    :cond_0
    return-void
.end method
