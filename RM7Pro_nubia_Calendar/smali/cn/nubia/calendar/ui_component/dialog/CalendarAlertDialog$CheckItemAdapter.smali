.class Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$CheckItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CalendarAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "textViewResourceId"    # I
    .param p5, "objects"    # [Ljava/lang/CharSequence;

    .prologue
    .line 547
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$CheckItemAdapter;->this$0:Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    .line 548
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 549
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 558
    int-to-long v0, p1

    return-wide v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x1

    return v0
.end method
