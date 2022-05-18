.class public Lcom/android/calculator2/HistoryItem;
.super Ljava/lang/Object;
.source "HistoryItem.java"


# instance fields
.field private mEvaluatorIndex:J

.field private mFormula:Landroid/text/Spannable;

.field private final mIsEmpty:Z

.field private mTimeInMillis:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/android/calculator2/HistoryItem;->mIsEmpty:Z

    return-void
.end method

.method public constructor <init>(JJLandroid/text/Spannable;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/android/calculator2/HistoryItem;->mEvaluatorIndex:J

    .line 34
    iput-wide p3, p0, Lcom/android/calculator2/HistoryItem;->mTimeInMillis:J

    .line 35
    iput-object p5, p0, Lcom/android/calculator2/HistoryItem;->mFormula:Landroid/text/Spannable;

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/android/calculator2/HistoryItem;->mIsEmpty:Z

    return-void
.end method


# virtual methods
.method public getDateString()Ljava/lang/CharSequence;
    .locals 7

    .line 56
    iget-wide v0, p0, Lcom/android/calculator2/HistoryItem;->mTimeInMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    const/high16 v6, 0x40000

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getEvaluatorIndex()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/android/calculator2/HistoryItem;->mEvaluatorIndex:J

    return-wide v0
.end method

.method public getFormula()Landroid/text/Spannable;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/calculator2/HistoryItem;->mFormula:Landroid/text/Spannable;

    return-object p0
.end method

.method public getTimeInMillis()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/android/calculator2/HistoryItem;->mTimeInMillis:J

    return-wide v0
.end method

.method public isEmptyView()Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/android/calculator2/HistoryItem;->mIsEmpty:Z

    return p0
.end method
