.class Lcn/nubia/music/activity/BaseListActivity$2;
.super Ljava/lang/Object;
.source "BaseListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/BaseListActivity;->configActionbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/BaseListActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/BaseListActivity;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcn/nubia/music/activity/BaseListActivity$2;->a:Lcn/nubia/music/activity/BaseListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcn/nubia/music/activity/BaseListActivity$2;->a:Lcn/nubia/music/activity/BaseListActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/BaseListActivity;->finish()V

    .line 100
    return-void
.end method
