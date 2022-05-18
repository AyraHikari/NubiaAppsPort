.class Lcn/nubia/collage/ui/CollageShareActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/ui/CollageShareActivity;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/ui/CollageShareActivity;


# direct methods
.method constructor <init>(Lcn/nubia/collage/ui/CollageShareActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity$b;->a:Lcn/nubia/collage/ui/CollageShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageShareActivity$b;->a:Lcn/nubia/collage/ui/CollageShareActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/filtershow/WelcomeActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageShareActivity$b;->a:Lcn/nubia/collage/ui/CollageShareActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
