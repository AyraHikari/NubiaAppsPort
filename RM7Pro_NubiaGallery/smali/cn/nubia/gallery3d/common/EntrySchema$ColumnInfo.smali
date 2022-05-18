.class public final Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;
.super Ljava/lang/Object;
.source "EntrySchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/common/EntrySchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColumnInfo"
.end annotation


# static fields
.field private static final ID_KEY:Ljava/lang/String; = "_id"


# instance fields
.field public final defaultValue:Ljava/lang/String;

.field public final field:Ljava/lang/reflect/Field;

.field public final fullText:Z

.field public final indexed:Z

.field public final name:Ljava/lang/String;

.field public final projectionIndex:I

.field public final type:I

.field public final unique:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/reflect/Field;I)V
    .locals 0

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 527
    iput p2, p0, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    .line 528
    iput-boolean p3, p0, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->indexed:Z

    .line 529
    iput-boolean p4, p0, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->unique:Z

    .line 530
    iput-boolean p5, p0, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->fullText:Z

    .line 531
    iput-object p6, p0, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;

    .line 532
    iput-object p7, p0, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 533
    iput p8, p0, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->projectionIndex:I

    const/4 p1, 0x1

    .line 535
    invoke-virtual {p7, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-void
.end method


# virtual methods
.method public isId()Z
    .locals 2

    .line 539
    iget-object v0, p0, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    const-string v1, "_id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
