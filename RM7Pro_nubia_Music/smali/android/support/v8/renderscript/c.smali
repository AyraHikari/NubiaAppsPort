.class Landroid/support/v8/renderscript/c;
.super Landroid/support/v8/renderscript/Element;
.source "ElementThunker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/c$1;
    }
.end annotation


# instance fields
.field f:Landroid/renderscript/Element;


# direct methods
.method constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Element;)V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/support/v8/renderscript/Element;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 141
    iput-object p2, p0, Landroid/support/v8/renderscript/c;->f:Landroid/renderscript/Element;

    .line 142
    return-void
.end method

.method static a(Landroid/support/v8/renderscript/Element$DataKind;)Landroid/renderscript/Element$DataKind;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Landroid/support/v8/renderscript/c$1;->a:[I

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 53
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 41
    :pswitch_0
    sget-object v0, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    goto :goto_0

    .line 43
    :pswitch_1
    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;

    goto :goto_0

    .line 45
    :pswitch_2
    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    goto :goto_0

    .line 47
    :pswitch_3
    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    goto :goto_0

    .line 49
    :pswitch_4
    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    goto :goto_0

    .line 51
    :pswitch_5
    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static a(Landroid/support/v8/renderscript/Element$DataType;)Landroid/renderscript/Element$DataType;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Landroid/support/v8/renderscript/c$1;->b:[I

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 59
    :pswitch_0
    sget-object v0, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 62
    :pswitch_1
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 64
    :pswitch_2
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 66
    :pswitch_3
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 68
    :pswitch_4
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 70
    :pswitch_5
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 72
    :pswitch_6
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 74
    :pswitch_7
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 76
    :pswitch_8
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 78
    :pswitch_9
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 80
    :pswitch_a
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 83
    :pswitch_b
    sget-object v0, Landroid/renderscript/Element$DataType;->BOOLEAN:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 86
    :pswitch_c
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_4X4:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 88
    :pswitch_d
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_3X3:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 90
    :pswitch_e
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_2X2:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 93
    :pswitch_f
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 95
    :pswitch_10
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 97
    :pswitch_11
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 99
    :pswitch_12
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 101
    :pswitch_13
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method static b(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    check-cast v0, Landroid/support/v8/renderscript/e;

    .line 147
    const/4 v1, 0x0

    .line 148
    sget-object v2, Landroid/support/v8/renderscript/c$1;->b:[I

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move-object v0, v1

    .line 211
    :goto_0
    new-instance v1, Landroid/support/v8/renderscript/c;

    invoke-direct {v1, p0, v0}, Landroid/support/v8/renderscript/c;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Element;)V

    return-object v1

    .line 150
    :pswitch_0
    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->I8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    goto :goto_0

    .line 159
    :pswitch_3
    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->I16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    goto :goto_0

    .line 162
    :pswitch_4
    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    goto :goto_0

    .line 165
    :pswitch_5
    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->I64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    goto :goto_0

    .line 168
    :pswitch_6
    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    goto :goto_0

    .line 171
    :pswitch_7
    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->U16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    goto :goto_0

    .line 174
    :pswitch_8
    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    goto :goto_0

    .line 177
    :pswitch_9
    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->U64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    goto :goto_0

    .line 181
    :pswitch_a
    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->BOOLEAN(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    goto :goto_0

    .line 185
    :pswitch_b
    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    goto :goto_0

    .line 188
    :pswitch_c
    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->MATRIX_3X3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    goto :goto_0

    .line 191
    :pswitch_d
    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->MATRIX_2X2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    goto :goto_0

    .line 195
    :pswitch_e
    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->ELEMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    goto :goto_0

    .line 198
    :pswitch_f
    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->TYPE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    goto :goto_0

    .line 201
    :pswitch_10
    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    goto :goto_0

    .line 204
    :pswitch_11
    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->SAMPLER(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    goto/16 :goto_0

    .line 207
    :pswitch_12
    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->SCRIPT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    goto/16 :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public static b(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
    .locals 2

    .prologue
    .line 215
    move-object v0, p0

    check-cast v0, Landroid/support/v8/renderscript/e;

    .line 217
    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-static {p1}, Landroid/support/v8/renderscript/c;->a(Landroid/support/v8/renderscript/Element$DataType;)Landroid/renderscript/Element$DataType;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    .line 218
    new-instance v1, Landroid/support/v8/renderscript/c;

    invoke-direct {v1, p0, v0}, Landroid/support/v8/renderscript/c;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Element;)V

    return-object v1
.end method

.method public static b(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;
    .locals 3

    .prologue
    .line 222
    move-object v0, p0

    check-cast v0, Landroid/support/v8/renderscript/e;

    .line 224
    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-static {p1}, Landroid/support/v8/renderscript/c;->a(Landroid/support/v8/renderscript/Element$DataType;)Landroid/renderscript/Element$DataType;

    move-result-object v1

    invoke-static {p2}, Landroid/support/v8/renderscript/c;->a(Landroid/support/v8/renderscript/Element$DataKind;)Landroid/renderscript/Element$DataKind;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    .line 225
    new-instance v1, Landroid/support/v8/renderscript/c;

    invoke-direct {v1, p0, v0}, Landroid/support/v8/renderscript/c;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Element;)V

    return-object v1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Landroid/support/v8/renderscript/c;->f:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v8/renderscript/Element;)Z
    .locals 2

    .prologue
    .line 229
    check-cast p1, Landroid/support/v8/renderscript/c;

    .line 230
    iget-object v0, p1, Landroid/support/v8/renderscript/c;->f:Landroid/renderscript/Element;

    iget-object v1, p0, Landroid/support/v8/renderscript/c;->f:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    return v0
.end method

.method b()Landroid/renderscript/Element;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Landroid/support/v8/renderscript/c;->f:Landroid/renderscript/Element;

    return-object v0
.end method

.method synthetic d()Landroid/renderscript/BaseObj;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/support/v8/renderscript/c;->b()Landroid/renderscript/Element;

    move-result-object v0

    return-object v0
.end method
