.class Lorg/joda/time/format/DateTimeParserBucket$SavedState;
.super Ljava/lang/Object;
.source "DateTimeParserBucket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeParserBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SavedState"
.end annotation


# instance fields
.field final iOffset:Ljava/lang/Integer;

.field final iSavedFields:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

.field final iSavedFieldsCount:I

.field final iZone:Lorg/joda/time/DateTimeZone;

.field final synthetic this$0:Lorg/joda/time/format/DateTimeParserBucket;


# direct methods
.method constructor <init>(Lorg/joda/time/format/DateTimeParserBucket;)V
    .locals 1

    .prologue
    .line 516
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->this$0:Lorg/joda/time/format/DateTimeParserBucket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    invoke-static {p1}, Lorg/joda/time/format/DateTimeParserBucket;->access$000(Lorg/joda/time/format/DateTimeParserBucket;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->iZone:Lorg/joda/time/DateTimeZone;

    .line 518
    invoke-static {p1}, Lorg/joda/time/format/DateTimeParserBucket;->access$100(Lorg/joda/time/format/DateTimeParserBucket;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->iOffset:Ljava/lang/Integer;

    .line 519
    invoke-static {p1}, Lorg/joda/time/format/DateTimeParserBucket;->access$200(Lorg/joda/time/format/DateTimeParserBucket;)[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->iSavedFields:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 520
    invoke-static {p1}, Lorg/joda/time/format/DateTimeParserBucket;->access$300(Lorg/joda/time/format/DateTimeParserBucket;)I

    move-result v0

    iput v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->iSavedFieldsCount:I

    .line 521
    return-void
.end method


# virtual methods
.method restoreState(Lorg/joda/time/format/DateTimeParserBucket;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 524
    iget-object v1, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->this$0:Lorg/joda/time/format/DateTimeParserBucket;

    if-eq p1, v1, :cond_0

    .line 526
    const/4 v0, 0x0

    .line 539
    :goto_0
    return v0

    .line 528
    :cond_0
    iget-object v1, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-static {p1, v1}, Lorg/joda/time/format/DateTimeParserBucket;->access$002(Lorg/joda/time/format/DateTimeParserBucket;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    .line 529
    iget-object v1, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->iOffset:Ljava/lang/Integer;

    invoke-static {p1, v1}, Lorg/joda/time/format/DateTimeParserBucket;->access$102(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 530
    iget-object v1, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->iSavedFields:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    invoke-static {p1, v1}, Lorg/joda/time/format/DateTimeParserBucket;->access$202(Lorg/joda/time/format/DateTimeParserBucket;[Lorg/joda/time/format/DateTimeParserBucket$SavedField;)[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 531
    iget v1, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->iSavedFieldsCount:I

    invoke-static {p1}, Lorg/joda/time/format/DateTimeParserBucket;->access$300(Lorg/joda/time/format/DateTimeParserBucket;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 536
    invoke-static {p1, v0}, Lorg/joda/time/format/DateTimeParserBucket;->access$402(Lorg/joda/time/format/DateTimeParserBucket;Z)Z

    .line 538
    :cond_1
    iget v1, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->iSavedFieldsCount:I

    invoke-static {p1, v1}, Lorg/joda/time/format/DateTimeParserBucket;->access$302(Lorg/joda/time/format/DateTimeParserBucket;I)I

    goto :goto_0
.end method
