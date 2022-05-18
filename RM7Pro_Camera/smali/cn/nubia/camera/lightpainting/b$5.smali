.class Lcn/nubia/camera/lightpainting/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/lightpainting/b;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcn/nubia/camera/lightpainting/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/lightpainting/b;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/b$5;->b:Lcn/nubia/camera/lightpainting/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 225
    iput-boolean p1, p0, Lcn/nubia/camera/lightpainting/b$5;->a:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 259
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$5;->b:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1}, Lcn/nubia/camera/lightpainting/b;->g(Lcn/nubia/camera/lightpainting/b;)Lcn/nubia/camera/k;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/nubia/camera/k;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 260
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$5;->b:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1, v1}, Lcn/nubia/camera/lightpainting/b;->f(Lcn/nubia/camera/lightpainting/b;Z)V

    .line 261
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$5;->b:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1, v1}, Lcn/nubia/camera/lightpainting/b;->g(Lcn/nubia/camera/lightpainting/b;Z)V

    goto :goto_1

    .line 231
    :sswitch_0
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b$5;->b:Lcn/nubia/camera/lightpainting/b;

    invoke-static {v0}, Lcn/nubia/camera/lightpainting/b;->a(Lcn/nubia/camera/lightpainting/b;)Lcn/nubia/camera/lightpainting/g;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/lightpainting/g;->d()V

    .line 233
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b$5;->b:Lcn/nubia/camera/lightpainting/b;

    invoke-static {v0, v2}, Lcn/nubia/camera/lightpainting/b;->b(Lcn/nubia/camera/lightpainting/b;Z)V

    .line 234
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b$5;->b:Lcn/nubia/camera/lightpainting/b;

    invoke-static {v0}, Lcn/nubia/camera/lightpainting/b;->b(Lcn/nubia/camera/lightpainting/b;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/b$5;->b:Lcn/nubia/camera/lightpainting/b;

    invoke-static {v1}, Lcn/nubia/camera/lightpainting/b;->c(Lcn/nubia/camera/lightpainting/b;)J

    move-result-wide v3

    invoke-virtual {p1, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$5;->b:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1, v2}, Lcn/nubia/camera/lightpainting/b;->c(Lcn/nubia/camera/lightpainting/b;Z)Z

    goto :goto_1

    .line 245
    :sswitch_1
    iget-boolean p1, p0, Lcn/nubia/camera/lightpainting/b$5;->a:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcn/nubia/camera/lightpainting/b$5;->a:Z

    if-eqz p1, :cond_0

    .line 247
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$5;->b:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1}, Lcn/nubia/camera/lightpainting/b;->f(Lcn/nubia/camera/lightpainting/b;)Lcn/nubia/camera/lightpainting/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/lightpainting/a;->e()V

    goto :goto_0

    .line 249
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$5;->b:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1}, Lcn/nubia/camera/lightpainting/b;->f(Lcn/nubia/camera/lightpainting/b;)Lcn/nubia/camera/lightpainting/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/lightpainting/a;->f()V

    .line 251
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$5;->b:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1}, Lcn/nubia/camera/lightpainting/b;->a(Lcn/nubia/camera/lightpainting/b;)Lcn/nubia/camera/lightpainting/g;

    move-result-object p1

    iget-boolean v0, p0, Lcn/nubia/camera/lightpainting/b$5;->a:Z

    invoke-virtual {p1, v1, v0}, Lcn/nubia/camera/lightpainting/g;->a(IZ)V

    .line 252
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$5;->b:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1, v2}, Lcn/nubia/camera/lightpainting/b;->d(Lcn/nubia/camera/lightpainting/b;Z)Z

    goto :goto_1

    .line 255
    :sswitch_2
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$5;->b:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1}, Lcn/nubia/camera/lightpainting/b;->f(Lcn/nubia/camera/lightpainting/b;)Lcn/nubia/camera/lightpainting/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/lightpainting/a;->g()V

    .line 256
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$5;->b:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1, v2}, Lcn/nubia/camera/lightpainting/b;->e(Lcn/nubia/camera/lightpainting/b;Z)Z

    goto :goto_1

    .line 238
    :sswitch_3
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$5;->b:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1}, Lcn/nubia/camera/lightpainting/b;->d(Lcn/nubia/camera/lightpainting/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "LightPaitingFragment"

    const-string v0, "Snapshot is running, just return.."

    .line 239
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 242
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$5;->b:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1}, Lcn/nubia/camera/lightpainting/b;->e(Lcn/nubia/camera/lightpainting/b;)V

    :cond_2
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900a8 -> :sswitch_3
        0x7f09010e -> :sswitch_2
        0x7f09024a -> :sswitch_1
        0x7f090345 -> :sswitch_0
    .end sparse-switch
.end method
