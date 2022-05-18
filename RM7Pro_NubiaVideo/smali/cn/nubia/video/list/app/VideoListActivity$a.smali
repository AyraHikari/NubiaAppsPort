.class Lcn/nubia/video/list/app/VideoListActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/list/app/VideoListActivity;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/list/app/VideoListActivity;


# direct methods
.method constructor <init>(Lcn/nubia/video/list/app/VideoListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/list/app/VideoListActivity$a;->a:Lcn/nubia/video/list/app/VideoListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/list/app/VideoListActivity$a;->a:Lcn/nubia/video/list/app/VideoListActivity;

    invoke-static {p1}, Lcn/nubia/video/list/app/VideoListActivity;->h(Lcn/nubia/video/list/app/VideoListActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcn/nubia/video/list/app/VideoListActivity$a;->a:Lcn/nubia/video/list/app/VideoListActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
