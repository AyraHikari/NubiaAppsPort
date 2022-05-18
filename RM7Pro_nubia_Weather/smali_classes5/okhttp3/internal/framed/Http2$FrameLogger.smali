.class final Lokhttp3/internal/framed/Http2$FrameLogger;
.super Ljava/lang/Object;
.source "Http2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FrameLogger"
.end annotation


# static fields
.field private static final BINARY:[Ljava/lang/String;

.field private static final FLAGS:[Ljava/lang/String;

.field private static final TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v11, 0x8

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 706
    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/String;

    const-string v7, "DATA"

    aput-object v7, v5, v6

    const-string v7, "HEADERS"

    aput-object v7, v5, v10

    const/4 v7, 0x2

    const-string v8, "PRIORITY"

    aput-object v8, v5, v7

    const-string v7, "RST_STREAM"

    aput-object v7, v5, v12

    const-string v7, "SETTINGS"

    aput-object v7, v5, v13

    const/4 v7, 0x5

    const-string v8, "PUSH_PROMISE"

    aput-object v8, v5, v7

    const/4 v7, 0x6

    const-string v8, "PING"

    aput-object v8, v5, v7

    const/4 v7, 0x7

    const-string v8, "GOAWAY"

    aput-object v8, v5, v7

    const-string v7, "WINDOW_UPDATE"

    aput-object v7, v5, v11

    const/16 v7, 0x9

    const-string v8, "CONTINUATION"

    aput-object v8, v5, v7

    sput-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->TYPES:[Ljava/lang/String;

    .line 723
    const/16 v5, 0x40

    new-array v5, v5, [Ljava/lang/String;

    sput-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    .line 724
    const/16 v5, 0x100

    new-array v5, v5, [Ljava/lang/String;

    sput-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    .line 727
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 728
    sget-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    const-string v7, "%8s"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x20

    const/16 v9, 0x30

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    .line 727
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 731
    :cond_0
    sget-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v5, v6

    .line 732
    sget-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const-string v7, "END_STREAM"

    aput-object v7, v5, v10

    .line 734
    new-array v4, v10, [I

    aput v10, v4, v6

    .line 736
    .local v4, "prefixFlags":[I
    sget-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const-string v7, "PADDED"

    aput-object v7, v5, v11

    .line 737
    array-length v7, v4

    move v5, v6

    :goto_1
    if-ge v5, v7, :cond_1

    aget v3, v4, v5

    .line 738
    .local v3, "prefixFlag":I
    sget-object v8, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int/lit8 v9, v3, 0x8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "|PADDED"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 737
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 741
    .end local v3    # "prefixFlag":I
    :cond_1
    sget-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const-string v7, "END_HEADERS"

    aput-object v7, v5, v13

    .line 742
    sget-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v7, 0x20

    const-string v8, "PRIORITY"

    aput-object v8, v5, v7

    .line 743
    sget-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v7, 0x24

    const-string v8, "END_HEADERS|PRIORITY"

    aput-object v8, v5, v7

    .line 744
    new-array v1, v12, [I

    fill-array-data v1, :array_0

    .line 747
    .local v1, "frameFlags":[I
    array-length v8, v1

    move v7, v6

    :goto_2
    if-ge v7, v8, :cond_3

    aget v0, v1, v7

    .line 748
    .local v0, "frameFlag":I
    array-length v9, v4

    move v5, v6

    :goto_3
    if-ge v5, v9, :cond_2

    aget v3, v4, v5

    .line 749
    .restart local v3    # "prefixFlag":I
    sget-object v10, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int v11, v3, v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v13, v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x7c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v13, v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 750
    sget-object v10, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int v11, v3, v0

    or-int/lit8 v11, v11, 0x8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v13, v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x7c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v13, v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "|PADDED"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 748
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 747
    .end local v3    # "prefixFlag":I
    :cond_2
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_2

    .line 755
    .end local v0    # "frameFlag":I
    :cond_3
    const/4 v2, 0x0

    :goto_4
    sget-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_5

    .line 756
    sget-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-nez v5, :cond_4

    sget-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    sget-object v6, Lokhttp3/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v6, v6, v2

    aput-object v6, v5, v2

    .line 755
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 758
    :cond_5
    return-void

    .line 744
    nop

    :array_0
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static formatFlags(BB)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # B
    .param p1, "flags"    # B

    .prologue
    .line 684
    if-nez p1, :cond_0

    const-string v1, ""

    .line 702
    :goto_0
    return-object v1

    .line 685
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 695
    :pswitch_0
    sget-object v1, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    sget-object v1, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 697
    .local v0, "result":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x5

    if-ne p0, v1, :cond_3

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    .line 698
    const-string v1, "HEADERS"

    const-string v2, "PUSH_PROMISE"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 688
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string v1, "ACK"

    goto :goto_0

    :cond_1
    sget-object v1, Lokhttp3/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_0

    .line 693
    :pswitch_2
    sget-object v1, Lokhttp3/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_0

    .line 695
    :cond_2
    sget-object v1, Lokhttp3/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v0, v1, p1

    goto :goto_1

    .line 699
    .restart local v0    # "result":Ljava/lang/String;
    :cond_3
    if-nez p0, :cond_4

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_4

    .line 700
    const-string v1, "PRIORITY"

    const-string v2, "COMPRESSED"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, v0

    .line 702
    goto :goto_0

    .line 685
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static formatHeader(ZIIBB)Ljava/lang/String;
    .locals 7
    .param p0, "inbound"    # Z
    .param p1, "streamId"    # I
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "flags"    # B

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 672
    sget-object v2, Lokhttp3/internal/framed/Http2$FrameLogger;->TYPES:[Ljava/lang/String;

    array-length v2, v2

    if-ge p3, v2, :cond_0

    sget-object v2, Lokhttp3/internal/framed/Http2$FrameLogger;->TYPES:[Ljava/lang/String;

    aget-object v1, v2, p3

    .line 673
    .local v1, "formattedType":Ljava/lang/String;
    :goto_0
    invoke-static {p3, p4}, Lokhttp3/internal/framed/Http2$FrameLogger;->formatFlags(BB)Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, "formattedFlags":Ljava/lang/String;
    const-string v3, "%s 0x%08x %5d %-13s %s"

    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/Object;

    if-eqz p0, :cond_1

    const-string v2, "<<"

    :goto_1
    aput-object v2, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x3

    aput-object v1, v4, v2

    const/4 v2, 0x4

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 672
    .end local v0    # "formattedFlags":Ljava/lang/String;
    .end local v1    # "formattedType":Ljava/lang/String;
    :cond_0
    const-string v2, "0x%02x"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 674
    .restart local v0    # "formattedFlags":Ljava/lang/String;
    .restart local v1    # "formattedType":Ljava/lang/String;
    :cond_1
    const-string v2, ">>"

    goto :goto_1
.end method
