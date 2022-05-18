.class public Lcom/android/calculator2/ExpressionDB$ExpressionEntry;
.super Ljava/lang/Object;
.source "ExpressionDB.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/ExpressionDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpressionEntry"
.end annotation


# static fields
.field public static final COLUMN_NAME_EXPRESSION:Ljava/lang/String; = "expression"

.field public static final COLUMN_NAME_FLAGS:Ljava/lang/String; = "flags"

.field public static final COLUMN_NAME_TIMESTAMP:Ljava/lang/String; = "timeStamp"

.field public static final TABLE_NAME:Ljava/lang/String; = "expressions"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
