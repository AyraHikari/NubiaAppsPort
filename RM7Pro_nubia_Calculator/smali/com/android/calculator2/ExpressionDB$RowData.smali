.class public Lcom/android/calculator2/ExpressionDB$RowData;
.super Ljava/lang/Object;
.source "ExpressionDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/ExpressionDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowData"
.end annotation


# static fields
.field private static final DEGREE_MODE:I = 0x2

.field private static final LONG_TIMEOUT:I = 0x1

.field private static final MILLIS_IN_15_MINS:I = 0xdbba0


# instance fields
.field public final mExpression:[B

.field public final mFlags:I

.field public mTimeStamp:J


# direct methods
.method private constructor <init>([BIJ)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/calculator2/ExpressionDB$RowData;->mExpression:[B

    .line 85
    iput p2, p0, Lcom/android/calculator2/ExpressionDB$RowData;->mFlags:I

    .line 86
    iput-wide p3, p0, Lcom/android/calculator2/ExpressionDB$RowData;->mTimeStamp:J

    return-void
.end method

.method synthetic constructor <init>([BIJLcom/android/calculator2/ExpressionDB$1;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calculator2/ExpressionDB$RowData;-><init>([BIJ)V

    return-void
.end method

.method public constructor <init>([BZZJ)V
    .locals 0

    .line 94
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/calculator2/ExpressionDB$RowData;->flagsFromDegreeAndTimeout(Ljava/lang/Boolean;Ljava/lang/Boolean;)I

    move-result p2

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/calculator2/ExpressionDB$RowData;-><init>([BIJ)V

    return-void
.end method

.method private degreeModeFromFlags(I)Z
    .locals 0

    and-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static flagsFromDegreeAndTimeout(Ljava/lang/Boolean;Ljava/lang/Boolean;)I
    .locals 0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    or-int/2addr p0, p1

    return p0
.end method

.method private longTimeoutFromFlags(I)Z
    .locals 0

    const/4 p0, 0x1

    and-int/2addr p1, p0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public degreeMode()Z
    .locals 1

    .line 97
    iget v0, p0, Lcom/android/calculator2/ExpressionDB$RowData;->mFlags:I

    invoke-direct {p0, v0}, Lcom/android/calculator2/ExpressionDB$RowData;->degreeModeFromFlags(I)Z

    move-result p0

    return p0
.end method

.method public longTimeout()Z
    .locals 1

    .line 100
    iget v0, p0, Lcom/android/calculator2/ExpressionDB$RowData;->mFlags:I

    invoke-direct {p0, v0}, Lcom/android/calculator2/ExpressionDB$RowData;->longTimeoutFromFlags(I)Z

    move-result p0

    return p0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 5

    .line 106
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "expression"

    .line 107
    iget-object v2, p0, Lcom/android/calculator2/ExpressionDB$RowData;->mExpression:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v1, "flags"

    .line 108
    iget v2, p0, Lcom/android/calculator2/ExpressionDB$RowData;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    iget-wide v1, p0, Lcom/android/calculator2/ExpressionDB$RowData;->mTimeStamp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/calculator2/ExpressionDB$RowData;->mTimeStamp:J

    :cond_0
    const-string v1, "timeStamp"

    .line 112
    iget-wide v2, p0, Lcom/android/calculator2/ExpressionDB$RowData;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method
