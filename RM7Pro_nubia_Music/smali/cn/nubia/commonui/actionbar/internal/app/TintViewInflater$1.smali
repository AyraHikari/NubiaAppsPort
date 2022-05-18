.class Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater$1;
.super Ljava/util/ArrayList;
.source "TintViewInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;)V
    .locals 1

    .prologue
    .line 68
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater$1;->a:Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    const-string v0, "EditText"

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater$1;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v0, "Spinner"

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater$1;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v0, "CheckBox"

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater$1;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v0, "RadioButton"

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater$1;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v0, "CheckedTextView"

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater$1;->add(Ljava/lang/Object;)Z

    .line 75
    const-string v0, "AutoCompleteTextView"

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater$1;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v0, "MultiAutoCompleteTextView"

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater$1;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v0, "RatingBar"

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater$1;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v0, "Button"

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater$1;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method
