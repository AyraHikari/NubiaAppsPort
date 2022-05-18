.class Lcn/nubia/camera/ba/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ba/f;->a(Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/CharSequence;

.field final synthetic c:Lcn/nubia/camera/ba/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ba/f;ILjava/lang/CharSequence;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcn/nubia/camera/ba/f$1;->c:Lcn/nubia/camera/ba/f;

    iput p2, p0, Lcn/nubia/camera/ba/f$1;->a:I

    iput-object p3, p0, Lcn/nubia/camera/ba/f$1;->b:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 262
    iget-object v0, p0, Lcn/nubia/camera/ba/f$1;->c:Lcn/nubia/camera/ba/f;

    invoke-virtual {v0}, Lcn/nubia/camera/ba/f;->c()V

    .line 264
    iget-object v0, p0, Lcn/nubia/camera/ba/f$1;->c:Lcn/nubia/camera/ba/f;

    iget v1, p0, Lcn/nubia/camera/ba/f$1;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-wide/16 v1, 0x1388

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x7d0

    :goto_0
    invoke-static {v0, v1, v2}, Lcn/nubia/camera/ba/f;->a(Lcn/nubia/camera/ba/f;J)J

    .line 265
    iget-object v0, p0, Lcn/nubia/camera/ba/f$1;->c:Lcn/nubia/camera/ba/f;

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->a(Lcn/nubia/camera/ba/f;)V

    .line 266
    iget-object v0, p0, Lcn/nubia/camera/ba/f$1;->c:Lcn/nubia/camera/ba/f;

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->b(Lcn/nubia/camera/ba/f;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ba/f$1;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcn/nubia/camera/ba/f$1;->c:Lcn/nubia/camera/ba/f;

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->b(Lcn/nubia/camera/ba/f;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ba/f$1;->c:Lcn/nubia/camera/ba/f;

    invoke-static {v1}, Lcn/nubia/camera/ba/f;->c(Lcn/nubia/camera/ba/f;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0600c7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    iget-object v0, p0, Lcn/nubia/camera/ba/f$1;->c:Lcn/nubia/camera/ba/f;

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->b(Lcn/nubia/camera/ba/f;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ba/f$1;->c:Lcn/nubia/camera/ba/f;

    invoke-static {v1}, Lcn/nubia/camera/ba/f;->c(Lcn/nubia/camera/ba/f;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0600cd

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 270
    iget-object v0, p0, Lcn/nubia/camera/ba/f$1;->c:Lcn/nubia/camera/ba/f;

    const/16 v1, 0x51

    const/4 v2, 0x0

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->d(Lcn/nubia/camera/ba/f;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/camera/ba/f;->a(Lcn/nubia/camera/ba/f;III)V

    .line 271
    iget-object v0, p0, Lcn/nubia/camera/ba/f$1;->c:Lcn/nubia/camera/ba/f;

    invoke-static {v0}, Lcn/nubia/camera/ba/f;->e(Lcn/nubia/camera/ba/f;)V

    return-void
.end method
