.class Lcn/nubia/collage/ui/CollageShareActivity$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/ui/CollageShareActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcn/nubia/collage/ui/CollageShareActivity;


# direct methods
.method constructor <init>(Lcn/nubia/collage/ui/CollageShareActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity$e;->d:Lcn/nubia/collage/ui/CollageShareActivity;

    iput-object p2, p0, Lcn/nubia/collage/ui/CollageShareActivity$e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/collage/ui/CollageShareActivity$e;->b:Ljava/lang/String;

    iput p4, p0, Lcn/nubia/collage/ui/CollageShareActivity$e;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "image/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageShareActivity$e;->d:Lcn/nubia/collage/ui/CollageShareActivity;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageShareActivity;->c(Lcn/nubia/collage/ui/CollageShareActivity;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageShareActivity$e;->d:Lcn/nubia/collage/ui/CollageShareActivity;

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageShareActivity$e;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/collage/ui/CollageShareActivity;->d(Lcn/nubia/collage/ui/CollageShareActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageShareActivity$e;->d:Lcn/nubia/collage/ui/CollageShareActivity;

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageShareActivity$e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/collage/ui/CollageShareActivity$e;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/nubia/collage/ui/CollageShareActivity;->e(Lcn/nubia/collage/ui/CollageShareActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageShareActivity$e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageShareActivity$e;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/ui/CollageShareActivity$e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v0, p0, Lcn/nubia/collage/ui/CollageShareActivity$e;->d:Lcn/nubia/collage/ui/CollageShareActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity$e;->d:Lcn/nubia/collage/ui/CollageShareActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e019f

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcn/nubia/collage/ui/CollageShareActivity$e;->d:Lcn/nubia/collage/ui/CollageShareActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcn/nubia/collage/ui/CollageShareActivity$e;->c:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageShareActivity$e;->d:Lcn/nubia/collage/ui/CollageShareActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
