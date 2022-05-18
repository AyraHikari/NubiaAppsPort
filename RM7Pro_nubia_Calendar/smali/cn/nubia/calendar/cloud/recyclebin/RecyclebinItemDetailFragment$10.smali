.class Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$10;
.super Ljava/lang/Object;
.source "RecyclebinItemDetailFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 284
    iput-object p1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$10;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;)I
    .locals 4
    .param p1, "o1"    # Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;
    .param p2, "o2"    # Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;

    .prologue
    .line 287
    invoke-virtual {p1}, Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;->getDeletedTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;->getDeletedTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 288
    const/4 v0, -0x1

    .line 292
    :goto_0
    return v0

    .line 289
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;->getDeletedTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;->getDeletedTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 290
    const/4 v0, 0x0

    goto :goto_0

    .line 292
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 284
    check-cast p1, Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;

    check-cast p2, Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$10;->compare(Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;)I

    move-result v0

    return v0
.end method
