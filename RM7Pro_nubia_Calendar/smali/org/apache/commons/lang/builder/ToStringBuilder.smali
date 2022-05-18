.class public Lorg/apache/commons/lang/builder/ToStringBuilder;
.super Ljava/lang/Object;
.source "ToStringBuilder.java"


# static fields
.field private static volatile defaultStyle:Lorg/apache/commons/lang/builder/ToStringStyle;


# instance fields
.field private final buffer:Ljava/lang/StringBuffer;

.field private final object:Ljava/lang/Object;

.field private final style:Lorg/apache/commons/lang/builder/ToStringStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    sput-object v0, Lorg/apache/commons/lang/builder/ToStringBuilder;->defaultStyle:Lorg/apache/commons/lang/builder/ToStringStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 229
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 242
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;
    .param p3, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    if-nez p2, :cond_0

    .line 257
    invoke-static {}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getDefaultStyle()Lorg/apache/commons/lang/builder/ToStringStyle;

    move-result-object p2

    .line 259
    :cond_0
    if-nez p3, :cond_1

    .line 260
    new-instance p3, Ljava/lang/StringBuffer;

    .end local p3    # "buffer":Ljava/lang/StringBuffer;
    const/16 v0, 0x200

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 262
    .restart local p3    # "buffer":Ljava/lang/StringBuffer;
    :cond_1
    iput-object p3, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    .line 263
    iput-object p2, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    .line 264
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->object:Ljava/lang/Object;

    .line 266
    invoke-virtual {p2, p3, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 267
    return-void
.end method

.method public static getDefaultStyle()Lorg/apache/commons/lang/builder/ToStringStyle;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lorg/apache/commons/lang/builder/ToStringBuilder;->defaultStyle:Lorg/apache/commons/lang/builder/ToStringStyle;

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 156
    invoke-static {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;

    .prologue
    .line 169
    invoke-static {p0, p1}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Z)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z

    .prologue
    .line 183
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZLjava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z
    .param p3, "reflectUpToClass"    # Ljava/lang/Class;

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultStyle(Lorg/apache/commons/lang/builder/ToStringStyle;)V
    .locals 2
    .param p0, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;

    .prologue
    .line 140
    if-nez p0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The style must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    sput-object p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->defaultStyle:Lorg/apache/commons/lang/builder/ToStringStyle;

    .line 144
    return-void
.end method


# virtual methods
.method public append(B)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # B

    .prologue
    .line 307
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 308
    return-object p0
.end method

.method public append(C)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # C

    .prologue
    .line 335
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 336
    return-object p0
.end method

.method public append(D)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 363
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 364
    return-object p0
.end method

.method public append(F)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 391
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 392
    return-object p0
.end method

.method public append(I)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 419
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 420
    return-object p0
.end method

.method public append(J)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 447
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 448
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 475
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 476
    return-object p0
.end method

.method public append(Ljava/lang/String;B)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # B

    .prologue
    .line 576
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 577
    return-object p0
.end method

.method public append(Ljava/lang/String;C)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # C

    .prologue
    .line 621
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 622
    return-object p0
.end method

.method public append(Ljava/lang/String;D)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 667
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 668
    return-object p0
.end method

.method public append(Ljava/lang/String;F)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 713
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 714
    return-object p0
.end method

.method public append(Ljava/lang/String;I)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 759
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 760
    return-object p0
.end method

.method public append(Ljava/lang/String;J)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 805
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 806
    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 851
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 852
    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;Z)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "fullDetail"    # Z

    .prologue
    .line 866
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 867
    return-object p0
.end method

.method public append(Ljava/lang/String;S)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 912
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 913
    return-object p0
.end method

.method public append(Ljava/lang/String;Z)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 530
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 531
    return-object p0
.end method

.method public append(Ljava/lang/String;[B)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [B

    .prologue
    .line 588
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    .line 589
    return-object p0
.end method

.method public append(Ljava/lang/String;[BZ)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [B
    .param p3, "fullDetail"    # Z

    .prologue
    .line 608
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    .line 609
    return-object p0
.end method

.method public append(Ljava/lang/String;[C)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [C

    .prologue
    .line 634
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    .line 635
    return-object p0
.end method

.method public append(Ljava/lang/String;[CZ)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [C
    .param p3, "fullDetail"    # Z

    .prologue
    .line 654
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    .line 655
    return-object p0
.end method

.method public append(Ljava/lang/String;[D)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [D

    .prologue
    .line 680
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    .line 681
    return-object p0
.end method

.method public append(Ljava/lang/String;[DZ)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [D
    .param p3, "fullDetail"    # Z

    .prologue
    .line 700
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    .line 701
    return-object p0
.end method

.method public append(Ljava/lang/String;[F)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [F

    .prologue
    .line 726
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    .line 727
    return-object p0
.end method

.method public append(Ljava/lang/String;[FZ)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [F
    .param p3, "fullDetail"    # Z

    .prologue
    .line 746
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    .line 747
    return-object p0
.end method

.method public append(Ljava/lang/String;[I)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [I

    .prologue
    .line 772
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    .line 773
    return-object p0
.end method

.method public append(Ljava/lang/String;[IZ)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [I
    .param p3, "fullDetail"    # Z

    .prologue
    .line 792
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    .line 793
    return-object p0
.end method

.method public append(Ljava/lang/String;[J)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [J

    .prologue
    .line 818
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    .line 819
    return-object p0
.end method

.method public append(Ljava/lang/String;[JZ)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [J
    .param p3, "fullDetail"    # Z

    .prologue
    .line 838
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    .line 839
    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Ljava/lang/Object;

    .prologue
    .line 879
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 880
    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;Z)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "fullDetail"    # Z

    .prologue
    .line 899
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 900
    return-object p0
.end method

.method public append(Ljava/lang/String;[S)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [S

    .prologue
    .line 925
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    .line 926
    return-object p0
.end method

.method public append(Ljava/lang/String;[SZ)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [S
    .param p3, "fullDetail"    # Z

    .prologue
    .line 945
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    .line 946
    return-object p0
.end method

.method public append(Ljava/lang/String;[Z)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Z

    .prologue
    .line 543
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    .line 544
    return-object p0
.end method

.method public append(Ljava/lang/String;[ZZ)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Z
    .param p3, "fullDetail"    # Z

    .prologue
    .line 563
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    .line 564
    return-object p0
.end method

.method public append(S)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # S

    .prologue
    .line 503
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 504
    return-object p0
.end method

.method public append(Z)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 279
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 280
    return-object p0
.end method

.method public append([B)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [B

    .prologue
    const/4 v2, 0x0

    .line 321
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    .line 322
    return-object p0
.end method

.method public append([C)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [C

    .prologue
    const/4 v2, 0x0

    .line 349
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    .line 350
    return-object p0
.end method

.method public append([D)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [D

    .prologue
    const/4 v2, 0x0

    .line 377
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    .line 378
    return-object p0
.end method

.method public append([F)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [F

    .prologue
    const/4 v2, 0x0

    .line 405
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    .line 406
    return-object p0
.end method

.method public append([I)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [I

    .prologue
    const/4 v2, 0x0

    .line 433
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    .line 434
    return-object p0
.end method

.method public append([J)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [J

    .prologue
    const/4 v2, 0x0

    .line 461
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    .line 462
    return-object p0
.end method

.method public append([Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 489
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 490
    return-object p0
.end method

.method public append([S)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [S

    .prologue
    const/4 v2, 0x0

    .line 517
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    .line 518
    return-object p0
.end method

.method public append([Z)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [Z

    .prologue
    const/4 v2, 0x0

    .line 293
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    .line 294
    return-object p0
.end method

.method public appendAsObjectToString(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 959
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang/ObjectUtils;->identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 960
    return-object p0
.end method

.method public appendSuper(Ljava/lang/String;)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2
    .param p1, "superToString"    # Ljava/lang/String;

    .prologue
    .line 978
    if-eqz p1, :cond_0

    .line 979
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSuper(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 981
    :cond_0
    return-object p0
.end method

.method public appendToString(Ljava/lang/String;)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2
    .param p1, "toString"    # Ljava/lang/String;

    .prologue
    .line 1012
    if-eqz p1, :cond_0

    .line 1013
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1015
    :cond_0
    return-object p0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getStringBuffer()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getStyle()Lorg/apache/commons/lang/builder/ToStringStyle;
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1060
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1061
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getStyle()Lorg/apache/commons/lang/builder/ToStringStyle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1065
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1063
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    goto :goto_0
.end method
