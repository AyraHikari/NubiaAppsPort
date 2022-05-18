.class public Lcn/nubia/calendar/util/Utils$LocationXY;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/util/Utils;
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
    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 822
    iput p1, p0, Lcn/nubia/calendar/util/Utils$LocationXY;->x0:F

    .line 823
    iput p2, p0, Lcn/nubia/calendar/util/Utils$LocationXY;->y0:F

    .line 824
    iput p3, p0, Lcn/nubia/calendar/util/Utils$LocationXY;->x1:F

    .line 825
    iput p4, p0, Lcn/nubia/calendar/util/Utils$LocationXY;->y1:F

    .line 826
    return-void
.end method
