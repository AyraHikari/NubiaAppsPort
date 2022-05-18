.class Lcn/nubia/calendar/deftcontroller/BottomBarController$2;
.super Ljava/lang/Object;
.source "BottomBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/deftcontroller/BottomBarController;->initView_Add()V
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
    .line 103
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController$2;->this$0:Lcn/nubia/calendar/deftcontroller/BottomBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController$2;->this$0:Lcn/nubia/calendar/deftcontroller/BottomBarController;

    invoke-static {v0, p1}, Lcn/nubia/calendar/deftcontroller/BottomBarController;->access$100(Lcn/nubia/calendar/deftcontroller/BottomBarController;Landroid/view/View;)V

    .line 107
    return-void
.end method
