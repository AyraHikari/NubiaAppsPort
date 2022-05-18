.class Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;
.super Ljava/lang/Object;
.source "CalendarAppWidgetModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DayInfo"
.end annotation


# instance fields
.field final mDayLabel:Ljava/lang/String;

.field final mJulianDay:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "julianDay"    # I
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput p1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;->mJulianDay:I

    .line 210
    iput-object p2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    .line 211
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    if-ne p0, p1, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v1

    .line 232
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 233
    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 235
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 236
    check-cast v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;

    .line 237
    .local v0, "other":Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 238
    iget-object v3, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 239
    goto :goto_0

    .line 240
    :cond_4
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    iget-object v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 241
    goto :goto_0

    .line 242
    :cond_5
    iget v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;->mJulianDay:I

    iget v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;->mJulianDay:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 243
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 220
    const/16 v0, 0x1f

    .line 221
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 222
    .local v1, "result":I
    iget-object v2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 223
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 224
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;->mJulianDay:I

    add-int v1, v2, v3

    .line 225
    return v1

    .line 222
    :cond_0
    iget-object v2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    .line 223
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    return-object v0
.end method
