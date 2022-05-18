.class public Lcn/nubia/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1e

.field private static final b:[Ljava/lang/String;


# instance fields
.field private c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "type"

    const-string v1, "version"

    const-string v2, "reserved1"

    const-string v3, "reserved2"

    const-string v4, "datasize"

    .line 43
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 42
    sput-object v0, Lcn/nubia/f/a;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcn/nubia/f/a;->c:[B

    .line 51
    sget v0, Lcn/nubia/f/a;->a:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/nubia/f/a;->c:[B

    const/16 v1, 0x14

    const/4 v2, 0x0

    .line 52
    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v3, 0x4e

    .line 53
    aput-byte v3, v0, v1

    const/16 v1, 0x16

    .line 54
    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v3, 0x55

    .line 55
    aput-byte v3, v0, v1

    const/16 v1, 0x18

    .line 56
    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v3, 0x42

    .line 57
    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    .line 58
    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v3, 0x49

    .line 59
    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    .line 60
    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x41

    .line 61
    aput-byte v2, v0, v1

    return-void
.end method

.method public static a()Lcn/nubia/f/a;
    .locals 1

    .line 68
    new-instance v0, Lcn/nubia/f/a;

    invoke-direct {v0}, Lcn/nubia/f/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 133
    iget-object v1, p0, Lcn/nubia/f/a;->c:[B

    mul-int/2addr p1, v0

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 134
    aput-byte v2, v1, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 135
    aput-byte v2, v1, v0

    add-int/lit8 p1, p1, 0x3

    shr-int/lit8 p2, p2, 0x0

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 136
    aput-byte p2, v1, p1

    goto :goto_0

    .line 138
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid KEY_ID:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NubiaFileHeader"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public b()[B
    .locals 1

    .line 171
    iget-object v0, p0, Lcn/nubia/f/a;->c:[B

    return-object v0
.end method
