.class public Lcn/nubia/touping/Utils/hdmi/HdmiNode;
.super Ljava/lang/Object;
.source "HdmiNode.java"


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = " "

.field private static final SUB_SEPARATOR:Ljava/lang/String; = "x"

.field private static final TAG:Ljava/lang/String; = "[HdmiNode]"


# instance fields
.field public mFps:I

.field public mHeightPixel:I

.field public mMode:I

.field public mWidthPixel:I

.field public rawData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->rawData:Ljava/lang/String;

    .line 19
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "propertys":[Ljava/lang/String;
    array-length v2, v0

    if-nez v2, :cond_1

    .line 34
    .end local v0    # "propertys":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 24
    .restart local v0    # "propertys":[Ljava/lang/String;
    :cond_1
    aget-object v2, v0, v4

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "resolutionRadio":[Ljava/lang/String;
    array-length v2, v1

    if-ne v2, v6, :cond_0

    .line 28
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mHeightPixel:I

    .line 29
    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mWidthPixel:I

    .line 30
    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mFps:I

    .line 31
    aget-object v2, v0, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mMode:I

    goto :goto_0
.end method

.method private getGreatestCommonDivisor(II)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 59
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 60
    :cond_0
    const/4 v1, 0x1

    .line 67
    :goto_0
    return v1

    .line 62
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 63
    rem-int v0, p1, p2

    .line 64
    .local v0, "r":I
    move p1, p2

    .line 65
    move p2, v0

    .line 66
    goto :goto_1

    .end local v0    # "r":I
    :cond_2
    move v1, p1

    .line 67
    goto :goto_0
.end method


# virtual methods
.method public getNodeInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mHeightPixel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mWidthPixel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mFps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "info":Ljava/lang/String;
    const-string v1, "[HdmiNode]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HdmiNode getNodeInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-object v0
.end method

.method public isAbove1080p()Z
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mWidthPixel:I

    const/16 v1, 0x438

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mHeightPixel:I

    const/16 v1, 0x780

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAbove60Fps()Z
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mFps:I

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportLwRatio()Z
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mWidthPixel:I

    div-int/lit8 v0, v0, 0x9

    iget v1, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mHeightPixel:I

    div-int/lit8 v1, v1, 0x10

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mWidthPixel:I

    div-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mHeightPixel:I

    div-int/lit8 v1, v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mWidthPixel:I

    div-int/lit8 v0, v0, 0x1b

    iget v1, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mHeightPixel:I

    div-int/lit8 v1, v1, 0x40

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mWidthPixel:I

    div-int/lit16 v0, v0, 0x87

    iget v1, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mHeightPixel:I

    div-int/lit16 v1, v1, 0x100

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    iget v1, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mHeightPixel:I

    iget v2, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mWidthPixel:I

    invoke-direct {p0, v1, v2}, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->getGreatestCommonDivisor(II)I

    move-result v0

    .line 73
    .local v0, "gcd":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mHeightPixel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mWidthPixel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mHeightPixel:I

    div-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mWidthPixel:I

    div-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mFps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
