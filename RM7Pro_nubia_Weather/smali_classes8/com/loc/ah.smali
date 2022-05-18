.class public final Lcom/loc/ah;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DB.java"


# static fields
.field private static b:Z

.field private static c:Z


# instance fields
.field private a:Lcom/loc/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/ah;->b:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/ah;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/loc/ad;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p3, p0, Lcom/loc/ah;->a:Lcom/loc/ad;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/ah;->a:Lcom/loc/ad;

    invoke-interface {v0, p1}, Lcom/loc/ad;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
