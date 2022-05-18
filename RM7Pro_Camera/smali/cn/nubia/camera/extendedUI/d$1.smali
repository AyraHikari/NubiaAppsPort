.class Lcn/nubia/camera/extendedUI/d$1;
.super Landroid/os/Handler;
.source "SourceFile"


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

    .line 209
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/d$1;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 212
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 213
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 239
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/d$1;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/d;->h(Lcn/nubia/camera/extendedUI/d;)Lcn/nubia/camera/am/a;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 240
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/d$1;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/d;->h(Lcn/nubia/camera/extendedUI/d;)Lcn/nubia/camera/am/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/am/a;->dismiss()V

    goto/16 :goto_1

    .line 215
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/d$1;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/d;->a(Lcn/nubia/camera/extendedUI/d;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    .line 218
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/d$1;->a:Lcn/nubia/camera/extendedUI/d;

    const-string v0, "/sys/class/thermal/thermal_zone83/temp"

    invoke-static {p1, v0}, Lcn/nubia/camera/extendedUI/d;->a(Lcn/nubia/camera/extendedUI/d;Ljava/lang/String;)I

    move-result p1

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_GET_TEMPERATURE: skinTemp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PopupFlashButton"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0xd6d8

    const/4 v1, 0x0

    if-lt p1, v0, :cond_5

    .line 221
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/d$1;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/d;->b(Lcn/nubia/camera/extendedUI/d;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcn/nubia/camera/extendedUI/d$1;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/d;->c(Lcn/nubia/camera/extendedUI/d;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 222
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/d$1;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/d;->d(Lcn/nubia/camera/extendedUI/d;)Lcom/android/preference/IconListPreference;

    move-result-object v0

    const-string v2, "off"

    invoke-virtual {v0, v2}, Lcom/android/preference/IconListPreference;->d(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/camera/extendedUI/d;->a(Lcn/nubia/camera/extendedUI/d;I)V

    .line 223
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/d$1;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/d;->e(Lcn/nubia/camera/extendedUI/d;)Lcn/nubia/camera/extendedUI/d$a;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/nubia/camera/extendedUI/d$1;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/d;->e(Lcn/nubia/camera/extendedUI/d;)Lcn/nubia/camera/extendedUI/d$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/extendedUI/d$a;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 224
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d$1;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f0055

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 226
    :cond_3
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d$1;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f0056

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/String;I)V

    .line 228
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/d$1;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/d;->e(Lcn/nubia/camera/extendedUI/d;)Lcn/nubia/camera/extendedUI/d$a;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 229
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/d$1;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/d;->e(Lcn/nubia/camera/extendedUI/d;)Lcn/nubia/camera/extendedUI/d$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/extendedUI/d$a;->a()V

    :cond_4
    return-void

    .line 234
    :cond_5
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/d$1;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/d;->f(Lcn/nubia/camera/extendedUI/d;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 235
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/d$1;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/d;->g(Lcn/nubia/camera/extendedUI/d;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v2, 0x2710

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    :goto_1
    return-void
.end method
