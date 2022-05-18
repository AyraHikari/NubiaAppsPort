.class public Lcn/nubia/calendar/submodule_year/model/YearViewClickEventModel;
.super Ljava/lang/Object;
.source "YearViewClickEventModel.java"


# instance fields
.field private month:I

.field private year:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcn/nubia/calendar/submodule_year/model/YearViewClickEventModel;->year:I

    .line 10
    iput p2, p0, Lcn/nubia/calendar/submodule_year/model/YearViewClickEventModel;->month:I

    .line 11
    return-void
.end method


# virtual methods
.method public getMonth()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcn/nubia/calendar/submodule_year/model/YearViewClickEventModel;->month:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcn/nubia/calendar/submodule_year/model/YearViewClickEventModel;->year:I

    return v0
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "month"    # I

    .prologue
    .line 26
    iput p1, p0, Lcn/nubia/calendar/submodule_year/model/YearViewClickEventModel;->month:I

    .line 27
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 18
    iput p1, p0, Lcn/nubia/calendar/submodule_year/model/YearViewClickEventModel;->year:I

    .line 19
    return-void
.end method
