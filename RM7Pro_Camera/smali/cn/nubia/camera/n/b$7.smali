.class Lcn/nubia/camera/n/b$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/n/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/n/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/n/b;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcn/nubia/camera/n/b$7;->a:Lcn/nubia/camera/n/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 620
    new-instance p1, Landroid/content/Intent;

    const-string v0, "intent.action.SELECT_CUBE_FILE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 621
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*/*.cube"

    .line 622
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/n/b$7;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->c(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x2713

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
