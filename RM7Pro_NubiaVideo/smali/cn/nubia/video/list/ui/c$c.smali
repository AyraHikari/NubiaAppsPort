.class Lcn/nubia/video/list/ui/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/b/c/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/list/ui/c;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/list/ui/c;


# direct methods
.method constructor <init>(Lcn/nubia/video/list/ui/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/list/ui/c$c;->a:Lcn/nubia/video/list/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/list/ui/c$c;->a:Lcn/nubia/video/list/ui/c;

    iget-object p1, p1, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lb/a/b/c/b/f;->x(I)Lb/a/b/c/b/m;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lb/a/b/c/b/m;->r()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/b/c/b/m;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "video_list_start_player"

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    iget-object p1, p0, Lcn/nubia/video/list/ui/c$c;->a:Lcn/nubia/video/list/ui/c;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-class v0, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    iget-object p1, p0, Lcn/nubia/video/list/ui/c$c;->a:Lcn/nubia/video/list/ui/c;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/16 v0, 0x68

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
