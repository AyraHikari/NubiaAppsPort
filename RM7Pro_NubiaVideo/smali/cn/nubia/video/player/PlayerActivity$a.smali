.class Lcn/nubia/video/player/PlayerActivity$a;
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
    iput-object p1, p0, Lcn/nubia/video/player/PlayerActivity$a;->a:Lcn/nubia/video/player/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/PlayerActivity$a;->a:Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
