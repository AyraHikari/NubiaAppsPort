.class Lcn/nubia/camera/extendedUI/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/extendedUI/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/extendedUI/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/extendedUI/d;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/d$2;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 267
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d$2;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {v0}, Lcn/nubia/camera/extendedUI/d;->b(Lcn/nubia/camera/extendedUI/d;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d$2;->a:Lcn/nubia/camera/extendedUI/d;

    const-string v2, "/sys/class/thermal/thermal_zone83/temp"

    invoke-static {v0, v2}, Lcn/nubia/camera/extendedUI/d;->a(Lcn/nubia/camera/extendedUI/d;Ljava/lang/String;)I

    move-result v0

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_GET_TEMPERATURE: skinTemp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PopupFlashButton"

    invoke-static {v3, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0xd6d8

    if-lt v0, v2, :cond_0

    .line 270
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d$2;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {v0}, Lcn/nubia/camera/extendedUI/d;->c(Lcn/nubia/camera/extendedUI/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d$2;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {v0}, Lcn/nubia/camera/extendedUI/d;->i(Lcn/nubia/camera/extendedUI/d;)Lcom/android/preference/IconListPreference;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Lcom/android/preference/IconListPreference;->d(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/camera/extendedUI/d;->b(Lcn/nubia/camera/extendedUI/d;I)V

    .line 272
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d$2;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/d;->c()V

    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d$2;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {v0}, Lcn/nubia/camera/extendedUI/d;->g(Lcn/nubia/camera/extendedUI/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d$2;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {v0}, Lcn/nubia/camera/extendedUI/d;->g(Lcn/nubia/camera/extendedUI/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d$2;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {v0, v1}, Lcn/nubia/camera/extendedUI/d;->a(Lcn/nubia/camera/extendedUI/d;Z)Z

    .line 281
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d$2;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {v0}, Lcn/nubia/camera/extendedUI/d;->j(Lcn/nubia/camera/extendedUI/d;)Lcom/android/common/ui/k$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d$2;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {v0}, Lcn/nubia/camera/extendedUI/d;->j(Lcn/nubia/camera/extendedUI/d;)Lcom/android/common/ui/k$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/ui/k$a;->a()V

    :cond_2
    return-void
.end method
