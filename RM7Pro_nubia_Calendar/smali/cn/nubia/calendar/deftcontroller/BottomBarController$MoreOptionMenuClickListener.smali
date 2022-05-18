.class Lcn/nubia/calendar/deftcontroller/BottomBarController$MoreOptionMenuClickListener;
.super Ljava/lang/Object;
.source "BottomBarController.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/deftcontroller/BottomBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreOptionMenuClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/deftcontroller/BottomBarController;


# direct methods
.method private constructor <init>(Lcn/nubia/calendar/deftcontroller/BottomBarController;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController$MoreOptionMenuClickListener;->this$0:Lcn/nubia/calendar/deftcontroller/BottomBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendar/deftcontroller/BottomBarController;Lcn/nubia/calendar/deftcontroller/BottomBarController$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendar/deftcontroller/BottomBarController;
    .param p2, "x1"    # Lcn/nubia/calendar/deftcontroller/BottomBarController$1;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcn/nubia/calendar/deftcontroller/BottomBarController$MoreOptionMenuClickListener;-><init>(Lcn/nubia/calendar/deftcontroller/BottomBarController;)V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 0
    .param p1, "which"    # I

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/deftcontroller/BottomBarController$MoreOptionMenuClickListener;->onClick(I)V

    .line 166
    return-void
.end method
