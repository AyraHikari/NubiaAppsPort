.class public Lc/e/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[I

.field public static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lc/e/a;->a:[I

    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lc/e/a;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
    .end array-data
.end method

.method public static a()[I
    .locals 1

    sget-object v0, Lc/e/a;->a:[I

    return-object v0
.end method

.method public static b()[I
    .locals 1

    sget-object v0, Lc/e/a;->b:[I

    return-object v0
.end method
