.class Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;
.super Ljava/lang/Object;
.source "CalendarAppWidgetModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RowInfo"
.end annotation


# static fields
.field static final TYPE_DAY:I = 0x0

.field static final TYPE_MEETING:I = 0x1


# instance fields
.field final mIndex:I

.field final mType:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "index"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;->mType:I

    .line 68
    iput p2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$RowInfo;->mIndex:I

    .line 69
    return-void
.end method
