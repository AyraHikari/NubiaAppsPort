.class public interface abstract Lcom/google/android/material/picker/GridSelector;
.super Ljava/lang/Object;
.source "GridSelector.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# virtual methods
.method public abstract drawCell(Landroid/widget/TextView;Ljava/util/Calendar;)V
.end method

.method public abstract getSelection()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public abstract onCalendarMonthDraw(Landroid/graphics/Canvas;Lcom/google/android/material/picker/MaterialCalendarGridView;)V
.end method

.method public abstract select(Ljava/util/Calendar;)V
.end method
