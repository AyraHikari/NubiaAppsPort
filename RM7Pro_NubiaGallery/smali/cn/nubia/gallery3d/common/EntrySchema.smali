.class public final Lcn/nubia/gallery3d/common/EntrySchema;
.super Ljava/lang/Object;
.source "EntrySchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;
    }
.end annotation


# static fields
.field private static final FULL_TEXT_INDEX_SUFFIX:Ljava/lang/String; = "_fulltext"

.field private static final SQLITE_TYPES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "EntrySchema"

.field public static final TYPE_BLOB:I = 0x7

.field public static final TYPE_BOOLEAN:I = 0x1

.field public static final TYPE_DOUBLE:I = 0x6

.field public static final TYPE_FLOAT:I = 0x5

.field public static final TYPE_INT:I = 0x3

.field public static final TYPE_LONG:I = 0x4

.field public static final TYPE_SHORT:I = 0x2

.field public static final TYPE_STRING:I


# instance fields
.field private final mColumnInfo:[Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;

.field private final mHasFullTextIndex:Z

.field private final mProjection:[Ljava/lang/String;

.field private final mTableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "TEXT"

    const-string v1, "INTEGER"

    const-string v2, "INTEGER"

    const-string v3, "INTEGER"

    const-string v4, "INTEGER"

    const-string v5, "REAL"

    const-string v6, "REAL"

    const-string v7, "NONE"

    .line 40
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/common/EntrySchema;->SQLITE_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/gallery3d/common/Entry;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/common/EntrySchema;->parseColumnInfo(Ljava/lang/Class;)[Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v0

    .line 53
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/common/EntrySchema;->parseTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mColumnInfo:[Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;

    const/4 p1, 0x0

    new-array v1, p1, [Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 60
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    move v2, p1

    .line 61
    :goto_0
    array-length v3, v0

    if-eq p1, v3, :cond_1

    .line 62
    aget-object v3, v0, p1

    .line 63
    iget-object v4, v3, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    aput-object v4, v1, p1

    .line 64
    iget-boolean v3, v3, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    .line 69
    :cond_2
    iput-object v1, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mProjection:[Ljava/lang/String;

    .line 70
    iput-boolean p1, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mHasFullTextIndex:Z

    return-void
.end method

.method private logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private parseColumnInfo(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;",
            ">;)V"
        }
    .end annotation

    .line 474
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 475
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_9

    .line 477
    aget-object v10, p1, v1

    .line 478
    const-class v2, Lcn/nubia/gallery3d/common/Entry$Column;

    invoke-interface {v10, v2}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/common/Entry$Column;

    if-nez v2, :cond_0

    goto :goto_3

    .line 483
    :cond_0
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 484
    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_1

    move v5, v0

    goto :goto_2

    .line 486
    :cond_1
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v5, v3

    goto :goto_2

    .line 488
    :cond_2
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_3

    const/4 v3, 0x2

    goto :goto_1

    .line 490
    :cond_3
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_4

    const/4 v3, 0x3

    goto :goto_1

    .line 492
    :cond_4
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_5

    const/4 v3, 0x4

    goto :goto_1

    .line 494
    :cond_5
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_6

    const/4 v3, 0x5

    goto :goto_1

    .line 496
    :cond_6
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_7

    const/4 v3, 0x6

    goto :goto_1

    .line 498
    :cond_7
    const-class v4, [B

    if-ne v3, v4, :cond_8

    const/4 v3, 0x7

    goto :goto_1

    .line 506
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 507
    new-instance v12, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;

    invoke-interface {v2}, Lcn/nubia/gallery3d/common/Entry$Column;->value()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lcn/nubia/gallery3d/common/Entry$Column;->indexed()Z

    move-result v6

    invoke-interface {v2}, Lcn/nubia/gallery3d/common/Entry$Column;->unique()Z

    move-result v7

    .line 508
    invoke-interface {v2}, Lcn/nubia/gallery3d/common/Entry$Column;->fullText()Z

    move-result v8

    invoke-interface {v2}, Lcn/nubia/gallery3d/common/Entry$Column;->defaultValue()Ljava/lang/String;

    move-result-object v9

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;-><init>(Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/reflect/Field;I)V

    .line 507
    invoke-virtual {p2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 501
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported field type for column: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 502
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    return-void
.end method

.method private parseColumnInfo(Ljava/lang/Class;)[Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)[",
            "Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;"
        }
    .end annotation

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p1, :cond_0

    .line 462
    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/common/EntrySchema;->parseColumnInfo(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 463
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 467
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;

    .line 468
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1
.end method

.method private parseTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 450
    const-class v0, Lcn/nubia/gallery3d/common/Entry$Table;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/common/Entry$Table;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 456
    :cond_0
    invoke-interface {p1}, Lcn/nubia/gallery3d/common/Entry$Table;->value()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 147
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12

    .line 296
    iget-object v0, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 297
    :goto_0
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CREATE TABLE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (_id INTEGER PRIMARY KEY AUTOINCREMENT"

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    iget-object v4, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mColumnInfo:[Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v5, v4

    move v6, v1

    :goto_1
    const/16 v7, 0x2c

    if-ge v6, v5, :cond_4

    aget-object v8, v4, v6

    .line 305
    invoke-virtual {v8}, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->isId()Z

    move-result v9

    if-nez v9, :cond_3

    .line 306
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    iget-object v9, v8, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    .line 308
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    sget-object v9, Lcn/nubia/gallery3d/common/EntrySchema;->SQLITE_TYPES:[Ljava/lang/String;

    iget v10, v8, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    aget-object v9, v9, v10

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget-object v9, v8, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, " DEFAULT "

    .line 311
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget-object v9, v8, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_1
    iget-boolean v9, v8, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->unique:Z

    if-eqz v9, :cond_3

    .line 315
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 316
    iget-object v7, v8, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 318
    :cond_2
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v8, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 323
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_5

    const-string v4, ",UNIQUE("

    .line 324
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    const-string v3, ");"

    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcn/nubia/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 328
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 331
    iget-object v4, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mColumnInfo:[Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v5, v4

    move v6, v1

    :goto_3
    if-ge v6, v5, :cond_7

    aget-object v8, v4, v6

    .line 333
    iget-boolean v9, v8, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->indexed:Z

    if-eqz v9, :cond_6

    const-string v9, "CREATE INDEX "

    .line 334
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_index_"

    .line 336
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    iget-object v9, v8, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ON "

    .line 338
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ("

    .line 340
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget-object v8, v8, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lcn/nubia/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 348
    :cond_7
    iget-boolean v4, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mHasFullTextIndex:Z

    if-eqz v4, :cond_e

    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_fulltext"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CREATE VIRTUAL TABLE "

    .line 351
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " USING FTS3 (_id INTEGER PRIMARY KEY"

    .line 353
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    iget-object v5, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mColumnInfo:[Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v6, v5

    move v8, v1

    :goto_4
    if-ge v8, v6, :cond_9

    aget-object v9, v5, v8

    .line 355
    iget-boolean v10, v9, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v10, :cond_8

    .line 357
    iget-object v9, v9, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 358
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " TEXT"

    .line 360
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 363
    :cond_9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcn/nubia/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 365
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 369
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "INSERT OR REPLACE INTO "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (_id"

    .line 371
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget-object v6, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mColumnInfo:[Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v8, v6

    move v9, v1

    :goto_5
    if-ge v9, v8, :cond_b

    aget-object v10, v6, v9

    .line 373
    iget-boolean v11, v10, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v11, :cond_a

    .line 374
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 375
    iget-object v10, v10, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_b
    const-string v6, ") VALUES (new._id"

    .line 378
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    iget-object v6, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mColumnInfo:[Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v7, v6

    move v8, v1

    :goto_6
    if-ge v8, v7, :cond_d

    aget-object v9, v6, v8

    .line 380
    iget-boolean v10, v9, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v10, :cond_c

    const-string v10, ",new."

    .line 381
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget-object v9, v9, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 385
    :cond_d
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "CREATE TRIGGER "

    .line 389
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_insert_trigger AFTER INSERT ON "

    .line 391
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " FOR EACH ROW BEGIN "

    .line 393
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "END;"

    .line 395
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lcn/nubia/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 397
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 400
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_update_trigger AFTER UPDATE ON "

    .line 402
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcn/nubia/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 411
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_delete_trigger AFTER DELETE ON "

    .line 413
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " FOR EACH ROW BEGIN DELETE FROM "

    .line 415
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " WHERE _id = old._id; END;"

    .line 417
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 419
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_e
    return-void
.end method

.method public cursorToObject(Landroid/database/Cursor;Lcn/nubia/gallery3d/common/Entry;)Lcn/nubia/gallery3d/common/Entry;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/nubia/gallery3d/common/Entry;",
            ">(",
            "Landroid/database/Cursor;",
            "TT;)TT;"
        }
    .end annotation

    .line 105
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mColumnInfo:[Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 106
    iget v5, v4, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->projectionIndex:I

    .line 107
    iget-object v6, v4, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 108
    iget v4, v4, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    const/4 v7, 0x0

    packed-switch v4, :pswitch_data_0

    goto :goto_4

    .line 133
    :pswitch_0
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 133
    :goto_1
    invoke-virtual {v6, p2, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 130
    :pswitch_1
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v6, p2, v4, v5}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_4

    .line 127
    :pswitch_2
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-virtual {v6, p2, v4}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto :goto_4

    .line 124
    :pswitch_3
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v6, p2, v4, v5}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_4

    .line 121
    :pswitch_4
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v6, p2, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_4

    .line 118
    :pswitch_5
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    invoke-virtual {v6, p2, v4}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto :goto_4

    .line 115
    :pswitch_6
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    invoke-virtual {v6, p2, v5}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_4

    .line 110
    :pswitch_7
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    .line 112
    :cond_2
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 110
    :goto_3
    invoke-virtual {v6, p2, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object p2

    :catch_0
    move-exception p1

    .line 141
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public deleteAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public deleteWithId(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 3

    .line 291
    iget-object v0, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v2, p3

    const-string p2, "_id=?"

    invoke-virtual {p1, v0, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p3

    :goto_0
    return v1
.end method

.method public dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 424
    iget-object v0, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3b

    .line 427
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcn/nubia/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 429
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 431
    iget-boolean v4, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mHasFullTextIndex:Z

    if-eqz v4, :cond_0

    .line 432
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_fulltext"

    .line 434
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getColumn(Ljava/lang/String;)Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;
    .locals 1

    .line 95
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/common/EntrySchema;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mColumnInfo:[Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 5

    .line 86
    iget-object v0, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mColumnInfo:[Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 87
    iget-object v4, v3, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    iget p1, v3, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->projectionIndex:I

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getColumnInfo()[Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;
    .locals 1

    .line 78
    iget-object v0, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mColumnInfo:[Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method public insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcn/nubia/gallery3d/common/Entry;)J
    .locals 5

    .line 280
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 281
    invoke-virtual {p0, p2, v0}, Lcn/nubia/gallery3d/common/EntrySchema;->objectToValues(Lcn/nubia/gallery3d/common/Entry;Landroid/content/ContentValues;)V

    .line 282
    iget-wide v1, p2, Lcn/nubia/gallery3d/common/Entry;->id:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-string v2, "_id"

    if-nez v1, :cond_0

    .line 283
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 285
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 286
    iput-wide v0, p2, Lcn/nubia/gallery3d/common/Entry;->id:J

    return-wide v0
.end method

.method public objectToValues(Lcn/nubia/gallery3d/common/Entry;Landroid/content/ContentValues;)V
    .locals 7

    .line 194
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mColumnInfo:[Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 195
    iget-object v4, v3, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 196
    iget-object v5, v3, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 197
    iget v3, v3, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 220
    :pswitch_0
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 217
    :pswitch_1
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 214
    :pswitch_2
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 211
    :pswitch_3
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 208
    :pswitch_4
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 205
    :pswitch_5
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_1

    .line 202
    :pswitch_6
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 199
    :pswitch_7
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 225
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public queryAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8

    .line 264
    iget-object v1, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryWithId(Landroid/database/sqlite/SQLiteDatabase;JLcn/nubia/gallery3d/common/Entry;)Z
    .locals 9

    .line 268
    iget-object v1, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mProjection:[Ljava/lang/String;

    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    .line 269
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v4, p3

    const-string v3, "_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 268
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 271
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 272
    invoke-virtual {p0, p1, p4}, Lcn/nubia/gallery3d/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcn/nubia/gallery3d/common/Entry;)Lcn/nubia/gallery3d/common/Entry;

    goto :goto_0

    :cond_0
    move v8, p3

    .line 275
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v8
.end method

.method public toDebugString(Lcn/nubia/gallery3d/common/Entry;)Ljava/lang/String;
    .locals 7

    .line 231
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID="

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcn/nubia/gallery3d/common/Entry;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 233
    iget-object v1, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mColumnInfo:[Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 234
    iget-object v5, v4, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 235
    iget-object v4, v4, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 236
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, " "

    .line 237
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v4, :cond_0

    const-string v4, "null"

    goto :goto_1

    .line 238
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 242
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public varargs toDebugString(Lcn/nubia/gallery3d/common/Entry;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 248
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID="

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcn/nubia/gallery3d/common/Entry;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 250
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 251
    invoke-virtual {p0, v3}, Lcn/nubia/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v4

    .line 252
    iget-object v4, v4, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 253
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, " "

    .line 254
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v4, :cond_0

    const-string v4, "null"

    goto :goto_1

    .line 255
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 259
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public valuesToObject(Landroid/content/ContentValues;Lcn/nubia/gallery3d/common/Entry;)Lcn/nubia/gallery3d/common/Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/nubia/gallery3d/common/Entry;",
            ">(",
            "Landroid/content/ContentValues;",
            "TT;)TT;"
        }
    .end annotation

    .line 156
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/common/EntrySchema;->mColumnInfo:[Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 157
    iget-object v4, v3, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 158
    iget-object v5, v3, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 159
    iget v3, v3, Lcn/nubia/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 182
    :pswitch_0
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, v5, p2, v3}, Lcn/nubia/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 179
    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {p0, v5, p2, v3}, Lcn/nubia/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 176
    :pswitch_2
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v5, p2, v3}, Lcn/nubia/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 173
    :pswitch_3
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v5, p2, v3}, Lcn/nubia/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 170
    :pswitch_4
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v5, p2, v3}, Lcn/nubia/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 167
    :pswitch_5
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v3

    invoke-direct {p0, v5, p2, v3}, Lcn/nubia/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 164
    :pswitch_6
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v5, p2, v3}, Lcn/nubia/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 161
    :pswitch_7
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v5, p2, v3}, Lcn/nubia/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p2

    :catch_0
    move-exception p1

    .line 188
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
