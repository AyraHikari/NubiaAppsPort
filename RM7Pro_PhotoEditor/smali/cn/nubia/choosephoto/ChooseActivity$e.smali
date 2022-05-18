.class Lcn/nubia/choosephoto/ChooseActivity$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/nubia/choosephoto/ui/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/choosephoto/ChooseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/choosephoto/ChooseActivity;


# direct methods
.method constructor <init>(Lcn/nubia/choosephoto/ChooseActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$e;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity$e;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {v0}, Lcn/nubia/choosephoto/ChooseActivity;->v(Lcn/nubia/choosephoto/ChooseActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "singleimage"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$e;->a:Lcn/nubia/choosephoto/ChooseActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$e;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x0

    return p1
.end method
