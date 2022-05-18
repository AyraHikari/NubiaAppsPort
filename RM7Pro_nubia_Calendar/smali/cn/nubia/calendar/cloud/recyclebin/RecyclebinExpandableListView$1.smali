.class Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView$1;
.super Ljava/lang/Object;
.source "RecyclebinExpandableListView.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;

    .prologue
    .line 13
    iput-object p1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView$1;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "arg0"    # Landroid/widget/ExpandableListView;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method
