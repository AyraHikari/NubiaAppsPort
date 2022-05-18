.class public Lcn/nubia/calendar/DayOfMonthCursor;
.super Landroid/util/MonthDisplayHelper;
.source "DayOfMonthCursor.java"


# instance fields
.field private mColumn:I

.field private mRow:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "weekStartDay"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p4}, Landroid/util/MonthDisplayHelper;-><init>(III)V

    .line 57
    invoke-virtual {p0, p3}, Lcn/nubia/calendar/DayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    .line 58
    invoke-virtual {p0, p3}, Lcn/nubia/calendar/DayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    .line 59
    return-void
.end method


# virtual methods
.method public down()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 128
    iget v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcn/nubia/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    .line 139
    :goto_0
    return v0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/DayOfMonthCursor;->nextMonth()V

    .line 135
    iput v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    .line 136
    :goto_1
    iget v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    iget v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcn/nubia/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    goto :goto_1

    .line 139
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSelectedColumn()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    return v0
.end method

.method public getSelectedDayOfMonth()I
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    iget v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcn/nubia/calendar/DayOfMonthCursor;->getDayAt(II)I

    move-result v0

    return v0
.end method

.method public getSelectedMonthOffset()I
    .locals 2

    .prologue
    .line 83
    iget v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    iget v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcn/nubia/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    .line 86
    :cond_0
    iget v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    if-nez v0, :cond_1

    .line 87
    const/4 v0, -0x1

    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSelectedRow()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    return v0
.end method

.method public isSelected(II)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 98
    iget v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public left()Z
    .locals 3

    .prologue
    .line 149
    iget v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    if-nez v1, :cond_0

    .line 150
    iget v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    .line 151
    const/4 v1, 0x6

    iput v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    .line 156
    :goto_0
    iget v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    iget v2, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcn/nubia/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    const/4 v1, 0x0

    .line 165
    :goto_1
    return v1

    .line 153
    :cond_0
    iget v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/calendar/DayOfMonthCursor;->previousMonth()V

    .line 162
    invoke-virtual {p0}, Lcn/nubia/calendar/DayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v0

    .line 163
    .local v0, "lastDay":I
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/DayOfMonthCursor;->getRowOf(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    .line 164
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/DayOfMonthCursor;->getColumnOf(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    .line 165
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public right()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 174
    iget v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 175
    iget v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    .line 176
    iput v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    .line 181
    :goto_0
    iget v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    iget v2, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcn/nubia/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    :goto_1
    return v0

    .line 178
    :cond_0
    iget v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/calendar/DayOfMonthCursor;->nextMonth()V

    .line 187
    iput v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    .line 188
    iput v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    .line 189
    :goto_2
    iget v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    iget v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcn/nubia/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 190
    iget v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    goto :goto_2

    .line 192
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setSelectedDayOfMonth(I)V
    .locals 1
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/DayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    .line 94
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/DayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    .line 95
    return-void
.end method

.method public setSelectedRowColumn(II)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 70
    iput p1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    .line 71
    iput p2, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    .line 72
    return-void
.end method

.method public up()Z
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcn/nubia/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    .line 111
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/DayOfMonthCursor;->previousMonth()V

    .line 115
    const/4 v0, 0x5

    iput v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    .line 116
    :goto_1
    iget v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    iget v1, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcn/nubia/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    iget v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/nubia/calendar/DayOfMonthCursor;->mRow:I

    goto :goto_1

    .line 119
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
