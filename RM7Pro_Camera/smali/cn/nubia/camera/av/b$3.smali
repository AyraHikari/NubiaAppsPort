.class Lcn/nubia/camera/av/b$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/av/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/av/b;

.field private b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcn/nubia/camera/av/b;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcn/nubia/camera/av/b$3;->a:Lcn/nubia/camera/av/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 199
    iput-object p1, p0, Lcn/nubia/camera/av/b$3;->b:Landroid/app/AlertDialog;

    return-void
.end method

.method private a()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcn/nubia/camera/av/b$3;->a:Lcn/nubia/camera/av/b;

    invoke-static {v0}, Lcn/nubia/camera/av/b;->b(Lcn/nubia/camera/av/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/k/c/f;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/av/b$3;->a:Lcn/nubia/camera/av/b;

    .line 203
    invoke-static {v0}, Lcn/nubia/camera/av/b;->b(Lcn/nubia/camera/av/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/k/c/f;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 204
    iget-object v0, p0, Lcn/nubia/camera/av/b$3;->a:Lcn/nubia/camera/av/b;

    .line 205
    invoke-static {v0}, Lcn/nubia/camera/av/b;->b(Lcn/nubia/camera/av/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->j()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/av/b$3;->a:Lcn/nubia/camera/av/b;

    .line 206
    invoke-static {v0}, Lcn/nubia/camera/av/b;->b(Lcn/nubia/camera/av/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 209
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/av/b$3;->b:Landroid/app/AlertDialog;

    if-nez v0, :cond_2

    .line 210
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/nubia/camera/av/b$3;->a:Lcn/nubia/camera/av/b;

    invoke-static {v1}, Lcn/nubia/camera/av/b;->b(Lcn/nubia/camera/av/b;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f03b0

    .line 211
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f03af

    .line 212
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0036

    const/4 v2, 0x0

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f008b

    new-instance v2, Lcn/nubia/camera/av/b$3$1;

    invoke-direct {v2, p0}, Lcn/nubia/camera/av/b$3$1;-><init>(Lcn/nubia/camera/av/b$3;)V

    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/av/b$3;->b:Landroid/app/AlertDialog;

    .line 224
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/av/b$3;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "MediaHelper"

    const-string v1, "isShowing"

    .line 225
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 228
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/av/b$3;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaHelper"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "usba"

    .line 176
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const-string p2, "android.intent.action.MEDIA_UNMOUNTED"

    .line 178
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "android.intent.action.MEDIA_CHECKING"

    .line 179
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string p2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 181
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 182
    invoke-static {}, Lcn/nubia/camera/av/b;->d()Lcn/nubia/k/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/k/a/a;->f()J

    goto/16 :goto_1

    :cond_2
    const-string p2, "android.intent.action.MEDIA_EJECT"

    .line 183
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 184
    invoke-static {}, Lcn/nubia/camera/av/b;->d()Lcn/nubia/k/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/k/a/a;->a()Z

    move-result p1

    .line 185
    iget-object p2, p0, Lcn/nubia/camera/av/b$3;->a:Lcn/nubia/camera/av/b;

    invoke-static {p2}, Lcn/nubia/camera/av/b;->b(Lcn/nubia/camera/av/b;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/k/c/f;->f(Landroid/content/Context;)Z

    move-result p2

    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    .line 187
    iget-object p1, p0, Lcn/nubia/camera/av/b$3;->a:Lcn/nubia/camera/av/b;

    invoke-static {p1}, Lcn/nubia/camera/av/b;->b(Lcn/nubia/camera/av/b;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f03ae

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 188
    iget-object p2, p0, Lcn/nubia/camera/av/b$3;->a:Lcn/nubia/camera/av/b;

    invoke-static {p2}, Lcn/nubia/camera/av/b;->b(Lcn/nubia/camera/av/b;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 190
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/av/b$3;->a:Lcn/nubia/camera/av/b;

    invoke-static {p1}, Lcn/nubia/camera/av/b;->a(Lcn/nubia/camera/av/b;)V

    .line 191
    iget-object p1, p0, Lcn/nubia/camera/av/b$3;->a:Lcn/nubia/camera/av/b;

    invoke-static {p1}, Lcn/nubia/camera/av/b;->b(Lcn/nubia/camera/av/b;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/ab/a$a;->b:Lcn/nubia/camera/ab/a$a;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/aw/a;->a(Lcn/nubia/camera/ab/a$a;)V

    goto :goto_1

    :cond_4
    const-string p2, "android.intent.action.MEDIA_MOUNTED"

    .line 192
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 194
    iget-object p1, p0, Lcn/nubia/camera/av/b$3;->a:Lcn/nubia/camera/av/b;

    invoke-static {p1}, Lcn/nubia/camera/av/b;->b(Lcn/nubia/camera/av/b;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/aw/a;->n()V

    .line 195
    invoke-direct {p0}, Lcn/nubia/camera/av/b$3;->a()V

    goto :goto_1

    .line 180
    :cond_5
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/av/b$3;->a:Lcn/nubia/camera/av/b;

    invoke-static {p1}, Lcn/nubia/camera/av/b;->a(Lcn/nubia/camera/av/b;)V

    :cond_6
    :goto_1
    return-void
.end method
