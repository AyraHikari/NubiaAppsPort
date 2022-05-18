.class Lcn/nubia/video/player/PlayerActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/PlayerActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/PlayerActivity;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/PlayerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/PlayerActivity$b;->a:Lcn/nubia/video/player/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/PlayerActivity$b;->a:Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity$b;->a:Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/nubia/video/permission/c;->a:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcn/nubia/video/permission/b;->c(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity$b;->a:Lcn/nubia/video/player/PlayerActivity;

    invoke-static {v0}, Lcn/nubia/video/player/PlayerActivity;->h(Lcn/nubia/video/player/PlayerActivity;)V

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/PlayerActivity$b;->a:Lcn/nubia/video/player/PlayerActivity;

    invoke-static {p1}, Lcn/nubia/video/player/PlayerActivity;->i(Lcn/nubia/video/player/PlayerActivity;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/PlayerActivity$b;->a:Lcn/nubia/video/player/PlayerActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/video/player/PlayerActivity;->j(Lcn/nubia/video/player/PlayerActivity;Z)Z

    .line 5
    iget-object p1, p0, Lcn/nubia/video/player/PlayerActivity$b;->a:Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Lcn/nubia/video/player/PlayerActivity;->r()V

    :goto_0
    return-void
.end method
