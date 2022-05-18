.class Lcn/nubia/commonui/actionbar/app/ActionBarListActivity$1;
.super Ljava/lang/Object;
.source "ActionBarListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity$1;->a:Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity$1;->a:Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity$1;->a:Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;

    iget-object v1, v1, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 30
    return-void
.end method
