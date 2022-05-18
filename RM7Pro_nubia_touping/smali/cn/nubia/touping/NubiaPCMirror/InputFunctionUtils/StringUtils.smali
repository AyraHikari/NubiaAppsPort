.class public final Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static getUtf8TruncationIndex([BI)I
    .locals 4
    .param p0, "utf8"    # [B
    .param p1, "maxLength"    # I

    .prologue
    .line 9
    array-length v0, p0

    .line 10
    .local v0, "len":I
    if-gt v0, p1, :cond_0

    move v1, v0

    .line 20
    .end local v0    # "len":I
    .local v1, "len":I
    :goto_0
    return v1

    .line 13
    .end local v1    # "len":I
    .restart local v0    # "len":I
    :cond_0
    move v0, p1

    .line 15
    :goto_1
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xc0

    const/16 v3, 0xc0

    if-eq v2, v3, :cond_1

    .line 18
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 20
    .end local v0    # "len":I
    .restart local v1    # "len":I
    goto :goto_0
.end method
