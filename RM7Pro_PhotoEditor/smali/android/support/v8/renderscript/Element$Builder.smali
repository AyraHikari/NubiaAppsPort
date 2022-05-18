.class public Landroid/support/v8/renderscript/Element$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mArraySizes:[I

.field mCount:I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroid/support/v8/renderscript/Element;

.field mRS:Landroid/support/v8/renderscript/RenderScript;

.field mSkipPadding:I


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    const/16 p1, 0x8

    new-array v0, p1, [Landroid/support/v8/renderscript/Element;

    iput-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    return-void
.end method


# virtual methods
.method public add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;)Landroid/support/v8/renderscript/Element$Builder;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v8/renderscript/Element$Builder;->add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;I)Landroid/support/v8/renderscript/Element$Builder;

    move-result-object p1

    return-object p1
.end method

.method public add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;I)Landroid/support/v8/renderscript/Element$Builder;
    .locals 7

    const/4 v0, 0x1

    if-lt p3, v0, :cond_3

    iget v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "#padding_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I

    return-object p0

    :cond_0
    iget v1, p1, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    iput v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I

    goto :goto_0

    :cond_1
    iput v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I

    :goto_0
    iget v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    array-length v4, v3

    if-ne v1, v4, :cond_2

    add-int/lit8 v4, v1, 0x8

    new-array v4, v4, [Landroid/support/v8/renderscript/Element;

    add-int/lit8 v5, v1, 0x8

    new-array v5, v5, [Ljava/lang/String;

    add-int/lit8 v6, v1, 0x8

    new-array v6, v6, [I

    invoke-static {v3, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    invoke-static {v1, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    invoke-static {v1, v2, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    iput-object v5, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iput-object v6, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    :cond_2
    iget-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    iget v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    aput-object p1, v1, v2

    iget-object p1, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    aput-object p2, p1, v2

    iget-object p1, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    aput p3, p1, v2

    add-int/2addr v2, v0

    iput v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    return-object p0

    :cond_3
    new-instance p1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string p2, "Array size cannot be less than 1."

    invoke-direct {p1, p2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public create()Landroid/support/v8/renderscript/Element;
    .locals 8

    iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    new-array v5, v0, [Landroid/support/v8/renderscript/Element;

    new-array v6, v0, [Ljava/lang/String;

    new-array v7, v0, [I

    iget-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    const/4 v2, 0x0

    invoke-static {v1, v2, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    invoke-static {v1, v2, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    invoke-static {v1, v2, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v0, [J

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v5, v2

    iget-object v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v3, v4}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0, v1, v6, v7}, Landroid/support/v8/renderscript/RenderScript;->nElementCreate2([J[Ljava/lang/String;[I)J

    move-result-wide v2

    new-instance v0, Landroid/support/v8/renderscript/Element;

    iget-object v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/support/v8/renderscript/Element;-><init>(JLandroid/support/v8/renderscript/RenderScript;[Landroid/support/v8/renderscript/Element;[Ljava/lang/String;[I)V

    return-object v0
.end method
