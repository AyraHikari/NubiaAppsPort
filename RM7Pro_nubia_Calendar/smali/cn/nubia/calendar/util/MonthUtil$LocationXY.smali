.class public Lcn/nubia/calendar/util/MonthUtil$LocationXY;
.super Ljava/lang/Object;
.source "MonthUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/util/MonthUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationXY"
.end annotation


# instance fields
.field public x0:F

.field public x1:F

.field public y0:F

.field public y1:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput p1, p0, Lcn/nubia/calendar/util/MonthUtil$LocationXY;->x0:F

    .line 293
    iput p2, p0, Lcn/nubia/calendar/util/MonthUtil$LocationXY;->y0:F

    .line 294
    iput p3, p0, Lcn/nubia/calendar/util/MonthUtil$LocationXY;->x1:F

    .line 295
    iput p4, p0, Lcn/nubia/calendar/util/MonthUtil$LocationXY;->y1:F

    .line 296
    return-void
.end method
