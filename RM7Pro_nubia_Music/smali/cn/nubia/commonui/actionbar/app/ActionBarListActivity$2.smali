.class Lcn/nubia/commonui/actionbar/app/ActionBarListActivity$2;
.super Ljava/lang/Object;
.source "ActionBarListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 118
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity$2;->a:Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity$2;->a:Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 122
    return-void
.end method
