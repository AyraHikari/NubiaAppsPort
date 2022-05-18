.class Lcn/nubia/calendar/deftcontroller/BottomBarController$3;
.super Ljava/lang/Object;
.source "BottomBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/deftcontroller/BottomBarController;->initView_More()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/deftcontroller/BottomBarController;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/deftcontroller/BottomBarController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/deftcontroller/BottomBarController;

    .prologue
    .line 115
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController$3;->this$0:Lcn/nubia/calendar/deftcontroller/BottomBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController$3;->this$0:Lcn/nubia/calendar/deftcontroller/BottomBarController;

    invoke-static {v0, p1}, Lcn/nubia/calendar/deftcontroller/BottomBarController;->access$200(Lcn/nubia/calendar/deftcontroller/BottomBarController;Landroid/view/View;)V

    .line 119
    return-void
.end method
