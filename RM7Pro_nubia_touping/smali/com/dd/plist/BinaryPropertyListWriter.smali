.class public final Lcom/dd/plist/BinaryPropertyListWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final VERSION_00:I = 0x0

.field private static final VERSION_10:I = 0xa

.field private static final VERSION_15:I = 0xf

.field private static final VERSION_20:I = 0x14


# instance fields
.field private count:J

.field private final idMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/dd/plist/NSObject;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private idSizeInBytes:I

.field private final out:Ljava/io/OutputStream;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/dd/plist/BinaryPropertyListWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dd/plist/BinaryPropertyListWriter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->version:I

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->out:Ljava/io/OutputStream;

    .line 71
    return-void
.end method

.method constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->version:I

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    .line 74
    iput p2, p0, Lcom/dd/plist/BinaryPropertyListWriter;->version:I

    .line 75
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->out:Ljava/io/OutputStream;

    .line 76
    return-void
.end method

.method private static computeIdSizeInBytes(I)I
    .locals 1

    .prologue
    .line 259
    const/16 v0, 0x100

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    .line 261
    :goto_0
    return v0

    .line 260
    :cond_0
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 261
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private computeOffsetSizeInBytes(J)I
    .locals 3

    .prologue
    .line 265
    const-wide/16 v0, 0x100

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 268
    :goto_0
    return v0

    .line 266
    :cond_0
    const-wide/32 v0, 0x10000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 267
    :cond_1
    const-wide v0, 0x100000000L

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 268
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private static getMinimumRequiredVersion(Lcom/dd/plist/NSObject;)I
    .locals 5

    .prologue
    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 86
    .line 87
    if-nez p0, :cond_7

    move v0, v1

    .line 90
    :goto_0
    instance-of v3, p0, Lcom/dd/plist/NSDictionary;

    if-eqz v3, :cond_0

    .line 91
    check-cast p0, Lcom/dd/plist/NSDictionary;

    .line 92
    invoke-virtual {p0}, Lcom/dd/plist/NSDictionary;->getHashMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    .line 93
    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListWriter;->getMinimumRequiredVersion(Lcom/dd/plist/NSObject;)I

    move-result v0

    .line 94
    if-le v0, v1, :cond_6

    :goto_2
    move v1, v0

    .line 96
    goto :goto_1

    .line 97
    :cond_0
    instance-of v3, p0, Lcom/dd/plist/NSArray;

    if-eqz v3, :cond_1

    .line 98
    check-cast p0, Lcom/dd/plist/NSArray;

    .line 99
    invoke-virtual {p0}, Lcom/dd/plist/NSArray;->getArray()[Lcom/dd/plist/NSObject;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_3
    if-ge v2, v4, :cond_3

    aget-object v0, v3, v2

    .line 100
    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListWriter;->getMinimumRequiredVersion(Lcom/dd/plist/NSObject;)I

    move-result v0

    .line 101
    if-le v0, v1, :cond_5

    .line 99
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_3

    .line 104
    :cond_1
    instance-of v3, p0, Lcom/dd/plist/NSSet;

    if-eqz v3, :cond_2

    .line 107
    check-cast p0, Lcom/dd/plist/NSSet;

    .line 108
    invoke-virtual {p0}, Lcom/dd/plist/NSSet;->allObjects()[Lcom/dd/plist/NSObject;

    move-result-object v3

    array-length v4, v3

    :goto_5
    if-ge v2, v4, :cond_3

    aget-object v0, v3, v2

    .line 109
    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListWriter;->getMinimumRequiredVersion(Lcom/dd/plist/NSObject;)I

    move-result v0

    .line 110
    if-le v0, v1, :cond_4

    .line 108
    :goto_6
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_5

    :cond_2
    move v1, v0

    .line 114
    :cond_3
    return v1

    :cond_4
    move v0, v1

    goto :goto_6

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method public static write(Ljava/io/File;Lcom/dd/plist/NSObject;)V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 128
    :try_start_0
    invoke-static {v0, p1}, Lcom/dd/plist/BinaryPropertyListWriter;->write(Ljava/io/OutputStream;Lcom/dd/plist/NSObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    :goto_0
    return-void

    .line 131
    :catchall_0
    move-exception v1

    .line 132
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 136
    :goto_1
    throw v1

    .line 134
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static write(Ljava/io/OutputStream;Lcom/dd/plist/NSObject;)V
    .locals 4

    .prologue
    .line 150
    invoke-static {p1}, Lcom/dd/plist/BinaryPropertyListWriter;->getMinimumRequiredVersion(Lcom/dd/plist/NSObject;)I

    move-result v0

    .line 151
    if-lez v0, :cond_3

    .line 152
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const-string v0, "v1.0"

    .line 153
    :goto_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The given property list structure cannot be saved. The required version of the binary format ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") is not yet supported."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    const-string v0, "v1.5"

    goto :goto_0

    :cond_1
    const/16 v1, 0x14

    if-ne v0, v1, :cond_2

    const-string v0, "v2.0"

    goto :goto_0

    :cond_2
    const-string v0, "v0.0"

    goto :goto_0

    .line 157
    :cond_3
    new-instance v1, Lcom/dd/plist/BinaryPropertyListWriter;

    invoke-direct {v1, p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;-><init>(Ljava/io/OutputStream;I)V

    .line 158
    invoke-virtual {v1, p1}, Lcom/dd/plist/BinaryPropertyListWriter;->write(Lcom/dd/plist/NSObject;)V

    .line 159
    return-void
.end method

.method public static writeToArray(Lcom/dd/plist/NSObject;)[B
    .locals 1

    .prologue
    .line 171
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 172
    invoke-static {v0, p0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(Ljava/io/OutputStream;Lcom/dd/plist/NSObject;)V

    .line 173
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method assignID(Lcom/dd/plist/NSObject;)V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_0
    return-void
.end method

.method getID(Lcom/dd/plist/NSObject;)I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method write(I)V
    .locals 4

    .prologue
    .line 291
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 292
    iget-wide v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    .line 293
    return-void
.end method

.method write(Lcom/dd/plist/NSObject;)V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 178
    new-array v0, v10, [B

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write([B)V

    .line 181
    iget v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->version:I

    sparse-switch v0, :sswitch_data_0

    .line 203
    :goto_0
    invoke-virtual {p1, p0}, Lcom/dd/plist/NSObject;->assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V

    .line 205
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListWriter;->computeIdSizeInBytes(I)I

    move-result v0

    iput v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idSizeInBytes:I

    .line 208
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v3, v0, [J

    .line 211
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dd/plist/NSObject;

    .line 213
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 214
    iget-wide v6, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    aput-wide v6, v3, v0

    .line 215
    if-nez v1, :cond_0

    .line 216
    invoke-virtual {p0, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    goto :goto_1

    .line 183
    :sswitch_0
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write([B)V

    goto :goto_0

    .line 187
    :sswitch_1
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write([B)V

    goto :goto_0

    .line 191
    :sswitch_2
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write([B)V

    goto :goto_0

    .line 195
    :sswitch_3
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write([B)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {v1, p0}, Lcom/dd/plist/NSObject;->toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V

    goto :goto_1

    .line 223
    :cond_1
    iget-wide v4, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    .line 224
    iget-wide v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    invoke-direct {p0, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->computeOffsetSizeInBytes(J)I

    move-result v1

    .line 225
    array-length v6, v3

    move v0, v2

    :goto_2
    if-ge v0, v6, :cond_2

    aget-wide v8, v3, v0

    .line 226
    invoke-virtual {p0, v8, v9, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 229
    :cond_2
    iget v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->version:I

    const/16 v2, 0xf

    if-eq v0, v2, :cond_3

    .line 232
    new-array v0, v10, [B

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write([B)V

    .line 234
    invoke-virtual {p0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 236
    iget v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idSizeInBytes:I

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 238
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeLong(J)V

    .line 240
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeLong(J)V

    .line 242
    invoke-virtual {p0, v4, v5}, Lcom/dd/plist/BinaryPropertyListWriter;->writeLong(J)V

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 246
    return-void

    .line 178
    nop

    :array_0
    .array-data 1
        0x62t
        0x70t
        0x6ct
        0x69t
        0x73t
        0x74t
    .end array-data

    .line 181
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0xf -> :sswitch_2
        0x14 -> :sswitch_3
    .end sparse-switch

    .line 183
    :array_1
    .array-data 1
        0x30t
        0x30t
    .end array-data

    .line 187
    nop

    :array_2
    .array-data 1
        0x31t
        0x30t
    .end array-data

    .line 191
    nop

    :array_3
    .array-data 1
        0x31t
        0x35t
    .end array-data

    .line 195
    nop

    :array_4
    .array-data 1
        0x32t
        0x30t
    .end array-data
.end method

.method write([B)V
    .locals 4

    .prologue
    .line 296
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 297
    iget-wide v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    .line 298
    return-void
.end method

.method writeBytes(JI)V
    .locals 5

    .prologue
    .line 302
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 303
    mul-int/lit8 v1, v0, 0x8

    shr-long v2, p1, v1

    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 302
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 305
    :cond_0
    return-void
.end method

.method writeDouble(D)V
    .locals 3

    .prologue
    .line 316
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeLong(J)V

    .line 317
    return-void
.end method

.method writeID(I)V
    .locals 3

    .prologue
    .line 308
    int-to-long v0, p1

    iget v2, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idSizeInBytes:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    .line 309
    return-void
.end method

.method writeIntHeader(II)V
    .locals 3

    .prologue
    .line 272
    sget-boolean v0, Lcom/dd/plist/BinaryPropertyListWriter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 273
    :cond_0
    const/16 v0, 0xf

    if-ge p2, v0, :cond_1

    .line 274
    shl-int/lit8 v0, p1, 0x4

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 288
    :goto_0
    return-void

    .line 275
    :cond_1
    const/16 v0, 0x100

    if-ge p2, v0, :cond_2

    .line 276
    shl-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 277
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 278
    int-to-long v0, p2

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    goto :goto_0

    .line 279
    :cond_2
    const/high16 v0, 0x10000

    if-ge p2, v0, :cond_3

    .line 280
    shl-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 281
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 282
    int-to-long v0, p2

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    goto :goto_0

    .line 284
    :cond_3
    shl-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 285
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 286
    int-to-long v0, p2

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    goto :goto_0
.end method

.method writeLong(J)V
    .locals 1

    .prologue
    .line 312
    const/16 v0, 0x8

    invoke-virtual {p0, p1, p2, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    .line 313
    return-void
.end method
