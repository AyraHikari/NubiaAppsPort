.class Lb/a/b/c/b/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/b/c/b/h;->v(Lcn/nubia/video/list/ui/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lb/a/b/c/b/h;


# direct methods
.method constructor <init>(Lb/a/b/c/b/h;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/b/c/b/h$a;->b:Lb/a/b/c/b/h;

    iput p2, p0, Lb/a/b/c/b/h$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lb/a/b/c/b/h$a;->b:Lb/a/b/c/b/h;

    iget-object p1, p1, Lb/a/b/c/b/a;->c:Lb/a/b/c/b/f;

    iget v0, p0, Lb/a/b/c/b/h$a;->a:I

    invoke-virtual {p1, v0}, Lb/a/b/c/b/f;->x(I)Lb/a/b/c/b/m;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lb/a/b/c/b/m;->r()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/b/c/b/m;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v1, "video_list_start_player"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    iget-object p1, p0, Lb/a/b/c/b/h$a;->b:Lb/a/b/c/b/h;

    iget-object p1, p1, Lb/a/b/c/b/a;->f:Landroid/content/Context;

    const-class v1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    iget-object p1, p0, Lb/a/b/c/b/h$a;->b:Lb/a/b/c/b/h;

    iget-object p1, p1, Lb/a/b/c/b/a;->f:Landroid/content/Context;

    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
