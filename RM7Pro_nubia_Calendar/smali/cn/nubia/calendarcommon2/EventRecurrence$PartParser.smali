.class abstract Lcn/nubia/calendarcommon2/EventRecurrence$PartParser;
.super Ljava/lang/Object;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendarcommon2/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "PartParser"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseIntRange(Ljava/lang/String;IIZ)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "minVal"    # I
    .param p2, "maxVal"    # I
    .param p3, "allowZero"    # Z

    .prologue
    .line 739
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_0

    .line 741
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 743
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 744
    .local v1, "val":I
    if-lt v1, p1, :cond_1

    if-gt v1, p2, :cond_1

    if-nez v1, :cond_2

    if-nez p3, :cond_2

    .line 745
    :cond_1
    new-instance v2, Lcn/nubia/calendarcommon2/EventRecurrence$InvalidFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Integer value out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/nubia/calendarcommon2/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    .end local v1    # "val":I
    :catch_0
    move-exception v0

    .line 749
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v2, Lcn/nubia/calendarcommon2/EventRecurrence$InvalidFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid integer value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/nubia/calendarcommon2/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 747
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v1    # "val":I
    :cond_2
    return v1
.end method

.method public static parseNumberList(Ljava/lang/String;IIZ)[I
    .locals 6
    .param p0, "listStr"    # Ljava/lang/String;
    .param p1, "minVal"    # I
    .param p2, "maxVal"    # I
    .param p3, "allowZero"    # Z

    .prologue
    .line 766
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    .line 768
    const/4 v4, 0x1

    new-array v3, v4, [I

    .line 769
    .local v3, "values":[I
    const/4 v4, 0x0

    invoke-static {p0, p1, p2, p3}, Lcn/nubia/calendarcommon2/EventRecurrence$PartParser;->parseIntRange(Ljava/lang/String;IIZ)I

    move-result v5

    aput v5, v3, v4

    .line 778
    :cond_0
    return-object v3

    .line 771
    .end local v3    # "values":[I
    :cond_1
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 772
    .local v2, "valueStrs":[Ljava/lang/String;
    array-length v1, v2

    .line 773
    .local v1, "len":I
    new-array v3, v1, [I

    .line 774
    .restart local v3    # "values":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 775
    aget-object v4, v2, v0

    invoke-static {v4, p1, p2, p3}, Lcn/nubia/calendarcommon2/EventRecurrence$PartParser;->parseIntRange(Ljava/lang/String;IIZ)I

    move-result v4

    aput v4, v3, v0

    .line 774
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract parsePart(Ljava/lang/String;Lcn/nubia/calendarcommon2/EventRecurrence;)I
.end method
