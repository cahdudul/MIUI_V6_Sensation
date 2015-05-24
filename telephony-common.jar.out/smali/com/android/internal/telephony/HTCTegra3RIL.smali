.class public Lcom/android/internal/telephony/HTCTegra3RIL;
.super Lcom/android/internal/telephony/RIL;
.source "HTCTegra3RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 25
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/HTCTegra3RIL;->mQANElements:I

    .line 26
    return-void
.end method
