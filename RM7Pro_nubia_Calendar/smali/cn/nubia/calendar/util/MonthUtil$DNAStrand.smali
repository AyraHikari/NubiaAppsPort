.class public Lcn/nubia/calendar/util/MonthUtil$DNAStrand;
.super Ljava/lang/Object;
.source "MonthUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/util/MonthUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DNAStrand"
.end annotation


# instance fields
.field public allDays:[I

.field public color:I

.field count:I

.field public points:[F

.field position:I

.field public storeLocation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/util/MonthUtil$LocationXY;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
