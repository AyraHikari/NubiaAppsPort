.class public Landroid/support/v8/renderscript/Element;
.super Landroid/support/v8/renderscript/b;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/Element$1;,
        Landroid/support/v8/renderscript/Element$DataKind;,
        Landroid/support/v8/renderscript/Element$DataType;
    }
.end annotation


# instance fields
.field a:I

.field b:Landroid/support/v8/renderscript/Element$DataType;

.field c:Landroid/support/v8/renderscript/Element$DataKind;

.field d:Z

.field e:I


# direct methods
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    .prologue
    .line 746
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/b;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 747
    return-void
.end method

.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V
    .locals 1

    .prologue
    .line 727
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/b;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 728
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->m:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p3, v0, :cond_1

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->o:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p3, v0, :cond_1

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->n:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p3, v0, :cond_1

    .line 731
    const/4 v0, 0x3

    if-ne p6, v0, :cond_0

    .line 732
    iget v0, p3, Landroid/support/v8/renderscript/Element$DataType;->y:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/support/v8/renderscript/Element;->a:I

    .line 739
    :goto_0
    iput-object p3, p0, Landroid/support/v8/renderscript/Element;->b:Landroid/support/v8/renderscript/Element$DataType;

    .line 740
    iput-object p4, p0, Landroid/support/v8/renderscript/Element;->c:Landroid/support/v8/renderscript/Element$DataKind;

    .line 741
    iput-boolean p5, p0, Landroid/support/v8/renderscript/Element;->d:Z

    .line 742
    iput p6, p0, Landroid/support/v8/renderscript/Element;->e:I

    .line 743
    return-void

    .line 734
    :cond_0
    iget v0, p3, Landroid/support/v8/renderscript/Element$DataType;->y:I

    mul-int/2addr v0, p6

    iput v0, p0, Landroid/support/v8/renderscript/Element;->a:I

    goto :goto_0

    .line 737
    :cond_1
    iget v0, p3, Landroid/support/v8/renderscript/Element$DataType;->y:I

    iput v0, p0, Landroid/support/v8/renderscript/Element;->a:I

    goto :goto_0
.end method

.method static a(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
    .locals 7

    .prologue
    .line 758
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->g:Z

    if-eqz v0, :cond_0

    .line 759
    check-cast p0, Landroid/support/v8/renderscript/e;

    .line 760
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/c;->b(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    .line 766
    :goto_0
    return-object v0

    .line 762
    :cond_0
    sget-object v4, Landroid/support/v8/renderscript/Element$DataKind;->a:Landroid/support/v8/renderscript/Element$DataKind;

    .line 763
    const/4 v5, 0x0

    .line 764
    const/4 v6, 0x1

    .line 765
    iget v0, p1, Landroid/support/v8/renderscript/Element$DataType;->x:I

    iget v1, v4, Landroid/support/v8/renderscript/Element$DataKind;->i:I

    invoke-virtual {p0, v0, v1, v5, v6}, Landroid/support/v8/renderscript/RenderScript;->a(IIZI)I

    move-result v1

    .line 766
    new-instance v0, Landroid/support/v8/renderscript/Element;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/v8/renderscript/Element;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V

    goto :goto_0
.end method

.method public static a(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
    .locals 7

    .prologue
    .line 783
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->g:Z

    if-eqz v0, :cond_0

    .line 784
    check-cast p0, Landroid/support/v8/renderscript/e;

    .line 785
    invoke-static {p0, p1, p2}, Landroid/support/v8/renderscript/c;->b(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    .line 807
    :goto_0
    return-object v0

    .line 787
    :cond_0
    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    const/4 v0, 0x4

    if-le p2, v0, :cond_2

    .line 788
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Vector size out of range 2-4."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :cond_2
    sget-object v0, Landroid/support/v8/renderscript/Element$1;->a:[I

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 811
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Cannot create vector of non-primitive type."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :pswitch_0
    sget-object v4, Landroid/support/v8/renderscript/Element$DataKind;->a:Landroid/support/v8/renderscript/Element$DataKind;

    .line 805
    const/4 v5, 0x0

    .line 806
    iget v0, p1, Landroid/support/v8/renderscript/Element$DataType;->x:I

    iget v1, v4, Landroid/support/v8/renderscript/Element$DataKind;->i:I

    invoke-virtual {p0, v0, v1, v5, p2}, Landroid/support/v8/renderscript/RenderScript;->a(IIZI)I

    move-result v1

    .line 807
    new-instance v0, Landroid/support/v8/renderscript/Element;

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v8/renderscript/Element;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V

    goto :goto_0

    .line 791
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 830
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->g:Z

    if-eqz v0, :cond_0

    .line 831
    check-cast p0, Landroid/support/v8/renderscript/e;

    .line 832
    invoke-static {p0, p1, p2}, Landroid/support/v8/renderscript/c;->b(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    .line 880
    :goto_0
    return-object v0

    .line 835
    :cond_0
    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->b:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->c:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->d:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->e:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->f:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->g:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->h:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    .line 842
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Unsupported DataKind"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :cond_1
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->h:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p1, v0, :cond_2

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->i:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p1, v0, :cond_2

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->m:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p1, v0, :cond_2

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->o:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p1, v0, :cond_2

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->n:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p1, v0, :cond_2

    .line 849
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Unsupported DataType"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :cond_2
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->m:Landroid/support/v8/renderscript/Element$DataType;

    if-ne p1, v0, :cond_3

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->e:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_3

    .line 852
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Bad kind and type combo"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_3
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->n:Landroid/support/v8/renderscript/Element$DataType;

    if-ne p1, v0, :cond_4

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->f:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_4

    .line 855
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Bad kind and type combo"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 857
    :cond_4
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->o:Landroid/support/v8/renderscript/Element$DataType;

    if-ne p1, v0, :cond_5

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->f:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_5

    .line 858
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Bad kind and type combo"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_5
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->i:Landroid/support/v8/renderscript/Element$DataType;

    if-ne p1, v0, :cond_6

    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->g:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_6

    .line 862
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Bad kind and type combo"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 866
    :cond_6
    sget-object v0, Landroid/support/v8/renderscript/Element$1;->b:[I

    invoke-virtual {p2}, Landroid/support/v8/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move v6, v5

    .line 879
    :goto_1
    iget v0, p1, Landroid/support/v8/renderscript/Element$DataType;->x:I

    iget v1, p2, Landroid/support/v8/renderscript/Element$DataKind;->i:I

    invoke-virtual {p0, v0, v1, v5, v6}, Landroid/support/v8/renderscript/RenderScript;->a(IIZI)I

    move-result v1

    .line 880
    new-instance v0, Landroid/support/v8/renderscript/Element;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v8/renderscript/Element;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V

    goto/16 :goto_0

    .line 868
    :pswitch_0
    const/4 v6, 0x2

    .line 869
    goto :goto_1

    .line 871
    :pswitch_1
    const/4 v6, 0x3

    .line 872
    goto :goto_1

    .line 874
    :pswitch_2
    const/4 v6, 0x4

    goto :goto_1

    .line 866
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->k:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 325
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->h:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->a(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->k:Landroid/support/v8/renderscript/Element;

    .line 327
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->k:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static c(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->l:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 438
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->h:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->c:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->a(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->l:Landroid/support/v8/renderscript/Element;

    .line 440
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->l:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static d(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->m:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 445
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->m:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->e:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->a(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->m:Landroid/support/v8/renderscript/Element;

    .line 447
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->m:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static e(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->n:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 466
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->o:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->f:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->a(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->n:Landroid/support/v8/renderscript/Element;

    .line 468
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->n:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static f(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->o:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 473
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->h:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->f:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->a(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->o:Landroid/support/v8/renderscript/Element;

    .line 475
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->o:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static g(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->p:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 536
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->h:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->a(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->p:Landroid/support/v8/renderscript/Element;

    .line 538
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->p:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Landroid/support/v8/renderscript/Element;->a:I

    return v0
.end method

.method public a(Landroid/support/v8/renderscript/Element;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 896
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 904
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/support/v8/renderscript/Element;->a:I

    iget v2, p1, Landroid/support/v8/renderscript/Element;->a:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->b:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->a:Landroid/support/v8/renderscript/Element$DataType;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->b:Landroid/support/v8/renderscript/Element$DataType;

    iget-object v2, p1, Landroid/support/v8/renderscript/Element;->b:Landroid/support/v8/renderscript/Element$DataType;

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroid/support/v8/renderscript/Element;->e:I

    iget v2, p1, Landroid/support/v8/renderscript/Element;->e:I

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
