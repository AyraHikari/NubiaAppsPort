.class Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field dateView:Landroid/widget/TextView;

.field dayView:Landroid/widget/TextView;

.field grayed:Z

.field julianDay:I

.field monthLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
